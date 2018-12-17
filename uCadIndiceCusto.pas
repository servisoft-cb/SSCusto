unit uCadIndiceCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, DBCtrls, RzButton,
  RxDBComb, RxLookup, db, Mask, Grids, DateUtils, DBGrids, SMDBGrid, Buttons, ExtCtrls, UCBase, uDmCadIndiceCusto, RzDBChk,
  RzPanel, ToolEdit, RXDBCtrl, RzLstBox,
  NxCollection, RzRadChk, dbXPress, SqlExpr, ComCtrls,
  RzChkLst, Menus, ComObj, CurrEdit, UCadCusto_Mat;

type
  TfrmCadIndiceCusto = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    pnlPesquisa: TPanel;
    Panel2: TPanel;
    StaticText1: TStaticText;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    UCControls1: TUCControls;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnInserir: TNxButton;
    btnPesquisar: TNxButton;
    btnExcluir: TNxButton;
    StaticText2: TStaticText;
    pnlCadastro: TPanel;
    Label39: TLabel;
    Panel3: TPanel;
    DBText1: TDBText;
    lblNome_Filial: TLabel;
    Label16: TLabel;
    RzGroupBox1: TRzGroupBox;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    RzGroupBox2: TRzGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit35: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDmCadIndiceCusto: TDmCadIndiceCusto;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer = 0);
    procedure prc_Posiciona_Registro;
    procedure prc_Informar_Filial;
    procedure prc_Habilita;

  public
    { Public declarations }
  end;

var
  frmCadIndiceCusto: TfrmCadIndiceCusto;

implementation

uses
  UMenu, DmdDatabase, rsDBUtils, uUtilPadrao, UEscolhe_Filial,
  StrUtils, Math;

{$R *.dfm}

procedure TfrmCadIndiceCusto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadIndiceCusto.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDmCadIndiceCusto);
end;

procedure TfrmCadIndiceCusto.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDmCadIndiceCusto := TDmCadIndiceCusto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDmCadIndiceCusto);
  prc_Consultar(0);
end;

procedure TfrmCadIndiceCusto.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadIndiceCusto.btnExcluirClick(Sender: TObject);
var
  vCodAux: Integer;
begin
  if not (fDmCadIndiceCusto.cdsConsulta.Active) or (fDmCadIndiceCusto.cdsConsulta.IsEmpty) or (fDmCadIndiceCusto.cdsConsultaID.AsInteger <= 0) then
    exit;
  prc_Posiciona_Registro;

  if fDmCadIndiceCusto.cdsIndiceCusto.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir o registro selecionado?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  vCodAux := fDmCadIndiceCusto.cdsConsulta.RecNo;
  prc_Excluir_Registro;
  prc_Consultar;
  if vCodAux <= fDmCadIndiceCusto.cdsConsulta.RecordCount then
    fDmCadIndiceCusto.cdsConsulta.RecNo := vCodAux;
end;

procedure TfrmCadIndiceCusto.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadIndiceCusto.btnAlterarClick(Sender: TObject);
var
  i: Integer;
begin
  if (fDmCadIndiceCusto.cdsIndiceCusto.IsEmpty) or not (fDmCadIndiceCusto.cdsIndiceCusto.Active) or (fDmCadIndiceCusto.cdsIndiceCustoID.AsInteger < 1) then
    exit;
  fDmCadIndiceCusto.cdsIndiceCusto.Edit;
  prc_Habilita;
  DBEdit1.SetFocus;
end;

procedure TfrmCadIndiceCusto.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadIndiceCusto.btnCancelarClick(Sender: TObject);
begin
  if (fDmCadIndiceCusto.cdsIndiceCusto.State in [dsBrowse]) or not (fDmCadIndiceCusto.cdsIndiceCusto.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  fDmCadIndiceCusto.cdsIndiceCusto.CancelUpdates;

  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadIndiceCusto.prc_Consultar(ID: Integer = 0);
begin
  SMDBGrid1.UnSelectAllClick(SMDBGrid1);
  SMDBGrid1.DisableScroll;
  fDmCadIndiceCusto.cdsConsulta.Close;
  fDmCadIndiceCusto.sdsConsulta.CommandText := fDmCadIndiceCusto.ctConsulta;
  fDmCadIndiceCusto.cdsConsulta.Open;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmCadIndiceCusto.prc_Excluir_Registro;
var
  vCodAux: Integer;
begin
  try
    vCodAux := fDmCadIndiceCusto.cdsIndiceCustoID.AsInteger;
    fDmCadIndiceCusto.prc_Excluir;
  except
    on e: Exception do
    begin
      prc_Consultar;
      if vCodAux > 0 then
        fDmCadIndiceCusto.cdsConsulta.Locate('ID', vCodAux, ([Locaseinsensitive]));
      raise;
    end
  end;
end;

procedure TfrmCadIndiceCusto.prc_Gravar_Registro;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vIPI_Suspenso, vPIS_Suspenso: string;
  vCodAux: Integer;
begin
  if fDmCadIndiceCusto.fnc_Erro_Registro then
  begin
    MessageDlg(fDmCadIndiceCusto.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata := True;
    sds.GetMetadata := False;
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 ' + ' WHERE TABELA = ' + QuotedStr('INDICECUSTO');
    sds.ExecSQL();

    vCodAux := fDmCadIndiceCusto.cdsIndiceCustoID.AsInteger;
    fDmCadIndiceCusto.prc_Gravar;

    dmDatabase.scoDados.Commit(ID);

    prc_Habilita;
    RzPageControl1.ActivePage := TS_Consulta;

    if (not (fDmCadIndiceCusto.cdsConsulta.Active)) or (not fDmCadIndiceCusto.cdsConsulta.Locate('ID', vCodAux, ([Locaseinsensitive]))) then
      prc_Consultar(vCodAux);
    fDmCadIndiceCusto.cdsConsulta.Locate('ID', vCodAux, ([Locaseinsensitive]));

  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise Exception.Create('Erro ao gravar o Registro: ' + #13 + e.Message);
    end;
  end;
  FreeAndNil(sds);

end;

procedure TfrmCadIndiceCusto.prc_Inserir_Registro;
var
  i: Integer;
begin
  prc_Informar_Filial;
  if vFilial <= 0 then
    exit;
  fDmCadIndiceCusto.prc_Inserir;
  if fDmCadIndiceCusto.cdsIndiceCusto.State in [dsBrowse] then
    Exit;
  fDmCadIndiceCusto.cdsIndiceCustoFILIAL.AsInteger     := vFilial;
  RzPageControl1.ActivePage := TS_Cadastro;
  prc_Habilita;
  DBEdit1.SetFocus;
end;

procedure TfrmCadIndiceCusto.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not (fDmCadIndiceCusto.cdsIndiceCusto.State in [dsEdit, dsInsert]) then
      prc_Posiciona_Registro;
  end;
end;

procedure TfrmCadIndiceCusto.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadIndiceCusto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := True;
  if fDmCadIndiceCusto.cdsIndiceCusto.State in [dsEdit, dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      CanClose := False
    else
      CanClose := True;
  end;
end;

procedure TfrmCadIndiceCusto.Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadIndiceCusto.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: string;
begin
  ColunaOrdenada := Column.FieldName;
  fDmCadIndiceCusto.cdsConsulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadIndiceCusto.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not (pnlPesquisa.Visible);
end;

procedure TfrmCadIndiceCusto.prc_Posiciona_Registro;
begin
  fDmCadIndiceCusto.prc_Localizar(fDmCadIndiceCusto.cdsConsultaID.AsInteger);
end;

procedure TfrmCadIndiceCusto.prc_Informar_Filial;
var
  ffrmEscolhe_Filial: TfrmEscolhe_Filial;
begin
  if fDmCadIndiceCusto.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDmCadIndiceCusto.cdsFilial.Last;
    vFilial      := fDmCadIndiceCusto.cdsFilialID.AsInteger;
    vFilial_Nome := fDmCadIndiceCusto.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDmCadIndiceCusto.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);
  lblNome_Filial.Caption := vFilial_Nome;
end;

procedure TfrmCadIndiceCusto.prc_Habilita;
begin
  TS_Consulta.TabEnabled := not(TS_Consulta.TabEnabled);
  btnAlterar.Enabled     := not(btnAlterar.Enabled);
  btnConfirmar.Enabled   := not(btnConfirmar.Enabled);
  Panel3.Enabled         := not(Panel3.Enabled);
  pnlCadastro.Enabled    := not(pnlCadastro.Enabled);
end;

end.

