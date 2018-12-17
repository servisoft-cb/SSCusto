unit UDMCadIndice;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, xmldom, Xmlxform, DBXpress, LogTypes;

type
  TDMCadIndice = class(TDataModule)
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    sdsIndice: TSQLDataSet;
    cdsIndice: TClientDataSet;
    dspIndice: TDataSetProvider;
    dsIndice: TDataSource;
    sdsIndiceID: TIntegerField;
    sdsIndiceNOME: TStringField;
    sdsIndiceTIPO_PV: TStringField;
    sdsIndiceVALOR: TFloatField;
    sdsIndiceINATIVO: TStringField;
    sdsIndiceUSA_EMPRESA: TStringField;
    cdsIndiceID: TIntegerField;
    cdsIndiceNOME: TStringField;
    cdsIndiceTIPO_PV: TStringField;
    cdsIndiceVALOR: TFloatField;
    cdsIndiceINATIVO: TStringField;
    cdsIndiceUSA_EMPRESA: TStringField;
    cdsConsultaID: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaTIPO_PV: TStringField;
    cdsConsultaVALOR: TFloatField;
    cdsConsultaINATIVO: TStringField;
    cdsConsultaUSA_EMPRESA: TStringField;
    cdsConsultaDESC_TIPO_PV: TStringField;
    cdsConsultaDESC_USA_EMPRESA: TStringField;
    cdsConsultaPV: TStringField;
    sdsIndiceLUCRO: TStringField;
    cdsIndiceLUCRO: TStringField;
    cdsConsultaLUCRO: TStringField;
    sdsIndiceFINANCEIRO: TStringField;
    cdsIndiceFINANCEIRO: TStringField;
    sdsIndicePRAZO_DIAS: TIntegerField;
    cdsIndicePRAZO_DIAS: TIntegerField;
    sdsIndiceID_CONTA_ORCAMENTO: TIntegerField;
    cdsIndiceID_CONTA_ORCAMENTO: TIntegerField;
    sdsContaOrcamento: TSQLDataSet;
    dspContaOrcamento: TDataSetProvider;
    cdsContaOrcamento: TClientDataSet;
    cdsContaOrcamentoID: TIntegerField;
    cdsContaOrcamentoTIPO: TStringField;
    cdsContaOrcamentoCODIGO: TStringField;
    cdsContaOrcamentoDESCRICAO: TStringField;
    cdsContaOrcamentoNOME_AUX: TStringField;
    cdsContaOrcamentoSUPERIOR: TStringField;
    dsContaOrcamento: TDataSource;
    qParametros: TSQLQuery;
    qParametrosUSA_CONTA_ORCAMENTO: TStringField;
    cdsConsultaNOME_CONTA_ORC: TStringField;
    cdsConsultaCODIGO_CONTA_ORC: TStringField;
    cdsConsultaID_CONTA_ORCAMENTO: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsIndiceReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsIndiceNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctConsulta: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir(Tipo: String = '');
    procedure prc_Gravar;
    procedure prc_Excluir;
    function  fnc_Erro_Registro: Boolean;

  end;

var
  DMCadIndice: TDMCadIndice;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadIndice.prc_Inserir(Tipo: String);
var
  vAux: Integer;
begin
  if not cdsIndice.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('INDICE',0);
  if vAux = 99999 then
    prc_Inserir(Tipo);

  cdsIndice.Insert;
  cdsIndiceID.AsInteger := vAux;
end;

procedure TDMCadIndice.prc_Excluir;
var
  ID: TTransactionDesc;
begin
  if not(cdsIndice.Active) or (cdsIndice.IsEmpty) then
    exit;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    cdsIndice.Delete;
    cdsIndice.ApplyUpdates(0);
    dmDatabase.scoDados.Commit(ID);
  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise;
    end
  end;
end;

procedure TDMCadIndice.prc_Gravar;
begin
  cdsIndice.Post;
  cdsIndice.ApplyUpdates(0);
end;

procedure TDMCadIndice.prc_Localizar(ID: Integer);
begin
  cdsIndice.Close;
  sdsIndice.CommandText := ctCommand;
  sdsIndice.ParamByName('ID').AsInteger := ID;
  cdsIndice.Open;
end;

procedure TDMCadIndice.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand     := sdsIndice.CommandText;
  ctConsulta    := sdsConsulta.CommandText;
  cdsContaOrcamento.Open;
  qParametros.Open;
  //*** Logs Implantado na versão .353
  LogProviderList.OnAdditionalValues := DoLogAdditionalValues;
  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if (Self.Components[i] is TClientDataSet) then
    begin
      SetLength(aIndices, 0);
      vIndices := TClientDataSet(Components[i]).IndexFieldNames;
      while (vIndices <> EmptyStr) do
      begin
        SetLength(aIndices, Length(aIndices) + 1);
        x := Pos(';', vIndices);
        if (x = 0) then
        begin
          aIndices[Length(aIndices) - 1] := vIndices;
          vIndices := EmptyStr;
        end
        else
        begin
          aIndices[Length(aIndices) - 1] := Copy(vIndices, 1, x - 1);
          vIndices := Copy(vIndices, x + 1, MaxInt);
        end;
      end;
      LogProviderList.AddProvider(TClientDataSet(Self.Components[i]), TClientDataSet(Self.Components[i]).Name, aIndices);
    end;
  end;
  //***********************
end;

function TDMCadIndice.fnc_Erro_Registro: Boolean;
var
  vTexto: String;
begin
  Result := True;
  vMsgErro := '';
  if (cdsIndiceLUCRO.AsString = 'S') and (cdsIndiceFINANCEIRO.AsString = 'S') then
    vMsgErro := vMsgErro + #13 + '*** Não pode estar marcado Lucro e Financeiro no mesmo índice!';
  if trim(vMsgErro) <> '' then
    exit;
  Result := False;
end;

procedure TDMCadIndice.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadIndice.cdsIndiceReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
    Raise Exception.Create('Registro de Custo não gravado! ' + #13 + e.Message);
end;

procedure TDMCadIndice.cdsIndiceNewRecord(DataSet: TDataSet);
begin
  cdsIndiceINATIVO.AsString    := 'N';
  cdsIndiceLUCRO.AsString      := 'N';
  cdsIndiceFINANCEIRO.AsString := 'N';
end;

end.

