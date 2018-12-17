unit uCadIndice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, DBCtrls, RzButton,
  RxDBComb, RxLookup, db, Mask, Grids, DateUtils, DBGrids, SMDBGrid, Buttons, ExtCtrls, UCBase, uDmCadIndice, RzDBChk,
  RzPanel, ToolEdit, RXDBCtrl, RzLstBox,
  NxCollection, RzRadChk, dbXPress, SqlExpr, ComCtrls,
  RzChkLst, Menus, ComObj, CurrEdit, UCadCusto_Mat;

type
  TfrmCadIndice = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    pnlPesquisa: TPanel;
    Panel2: TPanel;
    StaticText1: TStaticText;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
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
    DBEdit35: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    DBCheckBox1: TDBCheckBox;
    UCControls1: TUCControls;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label52: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    SpeedButton4: TSpeedButton;
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
    procedure RxDBComboBox1Change(Sender: TObject);
    procedure DBCheckBox3Click(Sender: TObject);
    procedure RxDBLookupCombo9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    fDmCadIndice: TDmCadIndice;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Posiciona_Registro;
    procedure prc_Habilita;

  public
    { Public declarations }
  end;

var
  frmCadIndice: TfrmCadIndice;

implementation

uses
  UMenu, DmdDatabase, rsDBUtils, uUtilPadrao, StrUtils, Math,
  USel_ContaOrc;

{$R *.dfm}

procedure TfrmCadIndice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadIndice.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDmCadIndice);
end;

procedure TfrmCadIndice.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDmCadIndice := TDmCadIndice.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDmCadIndice);
  prc_Consultar;
  Label52.Visible          := (fDmCadIndice.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
  RxDBLookupCombo9.Visible := (fDmCadIndice.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
  SpeedButton4.Visible     := (fDmCadIndice.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (trim(fDmCadIndice.qParametrosUSA_CONTA_ORCAMENTO.AsString) <> 'S') and ((SMDBGrid1.Columns[i].FieldName = 'CODIGO_CONTA_ORC') or (SMDBGrid1.Columns[i].FieldName = 'NOME_CONTA_ORC')) then
      SMDBGrid1.Columns[i].Visible := False;
  end;
end;

procedure TfrmCadIndice.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadIndice.btnExcluirClick(Sender: TObject);
var
  vCodAux: Integer;
begin
  if not (fDmCadIndice.cdsConsulta.Active) or (fDmCadIndice.cdsConsulta.IsEmpty) or (fDmCadIndice.cdsConsultaID.AsInteger <= 0) then
    exit;
  prc_Posiciona_Registro;

  if fDmCadIndice.cdsIndice.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir o registro selecionado?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  vCodAux := fDmCadIndice.cdsConsulta.RecNo;
  prc_Excluir_Registro;
  prc_Consultar;
  if vCodAux <= fDmCadIndice.cdsConsulta.RecordCount then
    fDmCadIndice.cdsConsulta.RecNo := vCodAux;
end;

procedure TfrmCadIndice.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadIndice.btnAlterarClick(Sender: TObject);
var
  i: Integer;
begin
  if (fDmCadIndice.cdsIndice.IsEmpty) or not (fDmCadIndice.cdsIndice.Active) or (fDmCadIndice.cdsIndiceID.AsInteger < 1) then
    exit;
  fDmCadIndice.cdsIndice.Edit;
  prc_Habilita;
end;

procedure TfrmCadIndice.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadIndice.btnCancelarClick(Sender: TObject);
begin
  if (fDmCadIndice.cdsIndice.State in [dsBrowse]) or not (fDmCadIndice.cdsIndice.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  fDmCadIndice.cdsIndice.CancelUpdates;

  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadIndice.prc_Consultar;
begin
  SMDBGrid1.UnSelectAllClick(SMDBGrid1);
  SMDBGrid1.DisableScroll;
  fDmCadIndice.cdsConsulta.Close;
  fDmCadIndice.sdsConsulta.CommandText := fDmCadIndice.ctConsulta;
  fDmCadIndice.cdsConsulta.Open;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmCadIndice.prc_Excluir_Registro;
var
  vCodAux: Integer;
begin
  try
    vCodAux := fDmCadIndice.cdsIndiceID.AsInteger;
    fDmCadIndice.prc_Excluir;
  except
    on e: Exception do
    begin
      prc_Consultar;
      if vCodAux > 0 then
        fDmCadIndice.cdsConsulta.Locate('ID', vCodAux, ([Locaseinsensitive]));
      raise;
    end
  end;
end;

procedure TfrmCadIndice.prc_Gravar_Registro;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vCodAux: Integer;
begin
  if fDmCadIndice.fnc_Erro_Registro then
  begin
    MessageDlg(fDmCadIndice.vMsgErro, mtError, [mbOk], 0);
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
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 ' + ' WHERE TABELA = ' + QuotedStr('INDICE');
    sds.ExecSQL();

    vCodAux := fDmCadIndice.cdsIndiceID.AsInteger;
    fDmCadIndice.prc_Gravar;

    dmDatabase.scoDados.Commit(ID);

    prc_Habilita;
    RzPageControl1.ActivePage := TS_Consulta;

    prc_Consultar;
    fDmCadIndice.cdsConsulta.Locate('ID', vCodAux, ([Locaseinsensitive]));

  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise Exception.Create('Erro ao gravar o Registro: ' + #13 + e.Message);
    end;
  end;
  FreeAndNil(sds);

end;

procedure TfrmCadIndice.prc_Inserir_Registro;
var
  i: Integer;
begin
  fDmCadIndice.prc_Inserir;

  if fDmCadIndice.cdsIndice.State in [dsBrowse] then
    Exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  prc_Habilita;

  DBEdit2.SetFocus;
end;

procedure TfrmCadIndice.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not (fDmCadIndice.cdsIndice.State in [dsEdit, dsInsert]) then
      prc_Posiciona_Registro;
    if fDmCadIndice.cdsIndiceTIPO_PV.AsString = 'P' then
      Label3.Caption := 'Percentual (%):'
    else
      Label3.Caption := 'Valor(R$):';
    Label5.Visible  := (fDmCadIndice.cdsIndiceFINANCEIRO.AsString = 'S');
    DBEdit3.Visible := (fDmCadIndice.cdsIndiceFINANCEIRO.AsString = 'S');
  end;
end;

procedure TfrmCadIndice.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadIndice.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := True;
  if fDmCadIndice.cdsIndice.State in [dsEdit, dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      CanClose := False
    else
      CanClose := True;
  end;
end;

procedure TfrmCadIndice.Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadIndice.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: string;
begin
  ColunaOrdenada := Column.FieldName;
  fDmCadIndice.cdsConsulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadIndice.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not (pnlPesquisa.Visible);
end;

procedure TfrmCadIndice.prc_Posiciona_Registro;
begin
  fDmCadIndice.prc_Localizar(fDmCadIndice.cdsConsultaID.AsInteger);
end;

procedure TfrmCadIndice.prc_Habilita;
begin
  TS_Consulta.TabEnabled := not(TS_Consulta.TabEnabled);
  btnAlterar.Enabled     := not(btnAlterar.Enabled);
  btnConfirmar.Enabled   := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled    := not(pnlCadastro.Enabled);
end;

procedure TfrmCadIndice.RxDBComboBox1Change(Sender: TObject);
begin
  if RxDBComboBox1.ItemIndex = 0 then
    Label3.Caption := 'Percentual (%):'
  else
    Label3.Caption := 'Valor(R$):';
end;

procedure TfrmCadIndice.DBCheckBox3Click(Sender: TObject);
begin
  Label5.Visible  := (DBCheckBox3.Checked);
  DBEdit3.Visible := (DBCheckBox3.Checked);
end;

procedure TfrmCadIndice.RxDBLookupCombo9KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDmCadIndice.cdsIndiceID_CONTA_ORCAMENTO.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ComboBox2.ItemIndex := 1;
    frmSel_ContaOrc.ShowModal;
    if vID_ContaOrcamento_Pos > 0 then
      fDmCadIndice.cdsIndiceID_CONTA_ORCAMENTO.AsInteger := vID_ContaOrcamento_Pos
    else
      fDmCadIndice.cdsIndiceID_CONTA_ORCAMENTO.Clear;
  end;
end;

procedure TfrmCadIndice.SpeedButton4Click(Sender: TObject);
begin
  fDmCadIndice.cdsContaOrcamento.Close;
  fDmCadIndice.cdsContaOrcamento.Open;
end;

end.

