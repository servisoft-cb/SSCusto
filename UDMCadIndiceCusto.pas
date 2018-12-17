unit UDMCadIndiceCusto;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, xmldom, Xmlxform, DBXpress, LogTypes;

type
  TDMCadIndiceCusto = class(TDataModule)
    dsFilial: TDataSource;
    cdsFilial: TClientDataSet;
    dspFilial: TDataSetProvider;
    sdsFilial: TSQLDataSet;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    sdsIndiceCusto: TSQLDataSet;
    cdsIndiceCusto: TClientDataSet;
    dspIndiceCusto: TDataSetProvider;
    cdsFilialSIMPLES: TStringField;
    cdsFilialUF: TStringField;
    dsIndiceCusto: TDataSource;
    sdsIndiceCustoID: TIntegerField;
    sdsIndiceCustoFILIAL: TIntegerField;
    sdsIndiceCustoCOMISSAO: TFloatField;
    sdsIndiceCustoPERCUNICO: TFloatField;
    sdsIndiceCustoCUSTOFINANCEIRO: TFloatField;
    sdsIndiceCustoPERCLUCRO: TFloatField;
    sdsIndiceCustoMATERIALDIVERSO: TFloatField;
    sdsIndiceCustoFIXO: TFloatField;
    sdsIndiceCustoFRETE: TFloatField;
    sdsIndiceCustoMAODEOBRA: TFloatField;
    sdsIndiceCustoIMPOSTO: TFloatField;
    sdsIndiceCustoMARKUP: TFloatField;
    sdsIndiceCustoMARKUPEXP: TFloatField;
    sdsIndiceCustoMAODEOBRADIRETA: TFloatField;
    sdsIndiceCustoCOMISSAODOLAR: TFloatField;
    sdsIndiceCustoCUSTOFINANCEIRODOLAR: TFloatField;
    sdsIndiceCustoFRETEDOLAR: TFloatField;
    sdsIndiceCustoPERCUNICODOLAR: TFloatField;
    sdsIndiceCustoPERCLUCRODOLAR: TFloatField;
    sdsIndiceCustoPERCICMSDOLAR: TFloatField;
    sdsIndiceCustoIMPOSTODOLAR: TFloatField;
    sdsIndiceCustoPERCICMS: TFloatField;
    cdsIndiceCustoID: TIntegerField;
    cdsIndiceCustoFILIAL: TIntegerField;
    cdsIndiceCustoCOMISSAO: TFloatField;
    cdsIndiceCustoPERCUNICO: TFloatField;
    cdsIndiceCustoCUSTOFINANCEIRO: TFloatField;
    cdsIndiceCustoPERCLUCRO: TFloatField;
    cdsIndiceCustoMATERIALDIVERSO: TFloatField;
    cdsIndiceCustoFIXO: TFloatField;
    cdsIndiceCustoFRETE: TFloatField;
    cdsIndiceCustoMAODEOBRA: TFloatField;
    cdsIndiceCustoIMPOSTO: TFloatField;
    cdsIndiceCustoMARKUP: TFloatField;
    cdsIndiceCustoMARKUPEXP: TFloatField;
    cdsIndiceCustoMAODEOBRADIRETA: TFloatField;
    cdsIndiceCustoCOMISSAODOLAR: TFloatField;
    cdsIndiceCustoCUSTOFINANCEIRODOLAR: TFloatField;
    cdsIndiceCustoFRETEDOLAR: TFloatField;
    cdsIndiceCustoPERCUNICODOLAR: TFloatField;
    cdsIndiceCustoPERCLUCRODOLAR: TFloatField;
    cdsIndiceCustoPERCICMSDOLAR: TFloatField;
    cdsIndiceCustoIMPOSTODOLAR: TFloatField;
    cdsIndiceCustoPERCICMS: TFloatField;
    cdsConsultaNOME_INTERNO_FILIAL: TStringField;
    cdsConsultaID: TIntegerField;
    cdsConsultaFILIAL: TIntegerField;
    cdsConsultaCOMISSAO: TFloatField;
    cdsConsultaPERCUNICO: TFloatField;
    cdsConsultaCUSTOFINANCEIRO: TFloatField;
    cdsConsultaPERCLUCRO: TFloatField;
    cdsConsultaMATERIALDIVERSO: TFloatField;
    cdsConsultaFIXO: TFloatField;
    cdsConsultaFRETE: TFloatField;
    cdsConsultaMAODEOBRA: TFloatField;
    cdsConsultaIMPOSTO: TFloatField;
    cdsConsultaMARKUP: TFloatField;
    cdsConsultaMARKUPEXP: TFloatField;
    cdsConsultaMAODEOBRADIRETA: TFloatField;
    cdsConsultaCOMISSAODOLAR: TFloatField;
    cdsConsultaCUSTOFINANCEIRODOLAR: TFloatField;
    cdsConsultaFRETEDOLAR: TFloatField;
    cdsConsultaPERCUNICODOLAR: TFloatField;
    cdsConsultaPERCLUCRODOLAR: TFloatField;
    cdsConsultaPERCICMSDOLAR: TFloatField;
    cdsConsultaIMPOSTODOLAR: TFloatField;
    cdsConsultaPERCICMS: TFloatField;
    sdsIndiceCustoTIPO: TStringField;
    cdsIndiceCustoTIPO: TStringField;
    cdsConsultaTIPO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsIndiceCustoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
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
  DMCadIndiceCusto: TDMCadIndiceCusto;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadIndiceCusto.prc_Inserir(Tipo: String);
var
  vAux: Integer;
begin
  if not cdsIndiceCusto.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('INDICECUSTO',0);
  if vAux = 99999 then
    prc_Inserir(Tipo);

  cdsIndiceCusto.Insert;
  cdsIndiceCustoID.AsInteger := vAux;
end;

procedure TDMCadIndiceCusto.prc_Excluir;
var
  ID: TTransactionDesc;
begin
  if not(cdsIndiceCusto.Active) or (cdsIndiceCusto.IsEmpty) then
    exit;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    cdsIndiceCusto.Delete;
    cdsIndiceCusto.ApplyUpdates(0);
    dmDatabase.scoDados.Commit(ID);
  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise;
    end
  end;
end;

procedure TDMCadIndiceCusto.prc_Gravar;
begin
  cdsIndiceCusto.Post;
  cdsIndiceCusto.ApplyUpdates(0);
end;

procedure TDMCadIndiceCusto.prc_Localizar(ID: Integer);
begin
  cdsIndiceCusto.Close;
  sdsIndiceCusto.CommandText := ctCommand;
  sdsIndiceCusto.ParamByName('ID').AsInteger := ID;
  cdsIndiceCusto.Open;
end;

procedure TDMCadIndiceCusto.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand     := sdsIndiceCusto.CommandText;
  ctConsulta    := sdsConsulta.CommandText;
  cdsFilial.Open;
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

function TDMCadIndiceCusto.fnc_Erro_Registro: Boolean;
var
  vTexto: String;
begin
  Result := True;
  vMsgErro := '';

  if trim(vMsgErro) <> '' then
    exit;

  Result := False;
end;

procedure TDMCadIndiceCusto.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadIndiceCusto.cdsIndiceCustoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
    Raise Exception.Create('Registro de Custo não gravado! ' + #13 + e.Message);
end;

end.

