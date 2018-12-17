unit uCadCustoNV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, DBCtrls, RzButton,
  RxDBComb, RxLookup, db, Mask, Grids, DateUtils, DBGrids, SMDBGrid, Buttons, ExtCtrls, UCBase, uDmCadCustoNV, RzDBChk,
  RzPanel, ToolEdit, RXDBCtrl, RzLstBox,
  NxCollection, RzRadChk, dbXPress, SqlExpr, ComCtrls,
  RzChkLst, Menus, ComObj, CurrEdit, UCadCustoNV_Mat, UCadCustoNV_Ind, UCadCustoNV_Ate, UCadCustoNV_Proc;

type
  TfrmCadCustoNV = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    Panel2: TPanel;
    StaticText1: TStaticText;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    RZPageControlDados: TRzPageControl;
    TS_Dados: TRzTabSheet;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnInserir: TNxButton;
    btnPesquisar: TNxButton;
    btnImprimir: TNxButton;
    btnExcluir: TNxButton;
    StaticText2: TStaticText;
    Label94: TLabel;
    Label95: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    pnlCadastro: TPanel;
    Label155: TLabel;
    rxdbFilial: TRxDBLookupCombo;
    Panel3: TPanel;
    DBText1: TDBText;
    lblNome_Filial: TLabel;
    Label16: TLabel;
    Panel4: TPanel;
    Label5: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label3: TLabel;
    Edit1: TEdit;
    Label17: TLabel;
    UCControls1: TUCControls;
    Label4: TLabel;
    DBDateEdit1: TDBDateEdit;
    btnGravarFicha: TNxButton;
    Panel11: TPanel;
    Label20: TLabel;
    btnCopiar: TNxButton;
    RzPageControl2: TRzPageControl;
    TS_Indice: TRzTabSheet;
    Panel6: TPanel;
    RzGroupBox1: TRzGroupBox;
    SMDBGrid3: TSMDBGrid;
    Panel8: TPanel;
    btnInserir_Ind: TNxButton;
    btnAlterar_Ind: TNxButton;
    btnExcluir_Ind: TNxButton;
    btnAtualizar_Ind: TNxButton;
    Panel7: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label39: TLabel;
    Label1: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    btnCalcular: TNxButton;
    DBEdit35: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    TS_Material: TRzTabSheet;
    Panel5: TPanel;
    btnInserir_Mat: TNxButton;
    btnAlterar_Mat: TNxButton;
    btnExclui_Mat: TNxButton;
    btnCopiar_Mat: TNxButton;
    btnCopiar_Mat_Comb: TNxButton;
    SMDBGrid2: TSMDBGrid;
    TS_Terceiro: TRzTabSheet;
    Panel9: TPanel;
    btnInserir_Ate: TNxButton;
    btnAlterar_Ate: TNxButton;
    btnExcluir_Ate: TNxButton;
    btnCopiar_Ate: TNxButton;
    SMDBGrid4: TSMDBGrid;
    TS_Processo: TRzTabSheet;
    Panel10: TPanel;
    btnInserir_Proc: TNxButton;
    btnAlterar_Proc: TNxButton;
    btnExcluir_Proc: TNxButton;
    SMDBGrid5: TSMDBGrid;
    RxDBLookupCombo2: TRxDBLookupCombo;
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
    procedure btnPesquisarClick(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11Enter(Sender: TObject);
    procedure btnInserir_MatClick(Sender: TObject);
    procedure btnAlterar_MatClick(Sender: TObject);
    procedure btnExclui_MatClick(Sender: TObject);
    procedure btnCopiar_MatClick(Sender: TObject);
    procedure btnCopiar_Mat_CombClick(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure btnInserir_IndClick(Sender: TObject);
    procedure btnAlterar_IndClick(Sender: TObject);
    procedure btnExcluir_IndClick(Sender: TObject);
    procedure btnAtualizar_IndClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure btnInserir_AteClick(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnAlterar_AteClick(Sender: TObject);
    procedure btnExcluir_AteClick(Sender: TObject);
    procedure btnInserir_ProcClick(Sender: TObject);
    procedure btnExcluir_ProcClick(Sender: TObject);
    procedure btnCopiar_AteClick(Sender: TObject);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit14KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGravarFichaClick(Sender: TObject);
    procedure btnAlterar_ProcClick(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
  private
    { Private declarations }
    fDmCadCustoNV: TDmCadCustoNV;
    ffrmCadCustoNV_Mat: TfrmCadCustoNV_Mat;
    ffrmCadCustoNV_Ind: TfrmCadCustoNV_Ind;
    ffrmCadCustoNV_Ate: TfrmCadCustoNV_Ate;
    ffrmCadCustoNV_Proc: TfrmCadCustoNV_Proc;
    vImpCalc : String;
    vItem : Integer;
    vPercLucro : Real;
    vPrazoDias : Integer;
    vPercFinanceiro : Real;

    procedure prc_Inserir_Registro(Indice : Boolean = True);
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer = 0);
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Posiciona_Registro;
    procedure prc_CriaExcel(vDados: TDataSource);
    procedure prc_Informar_Filial;
    procedure prc_Habilita;
    procedure prc_Chama_Form_Produto;
    procedure prc_Copiar_Consumo;
    procedure prc_Grava_Custo_Mat(ID_Material, ID_Cor : Integer ; Unidade, Nome_Cor : String ; Consumo : Variant);
    procedure prc_Calcular_MateriaPrima;
    procedure prc_Calcular_Terceiro;
    procedure prc_Soma_Total_Indice;
    procedure prc_Recalcular_Ind;
    procedure prc_Gravar_Embalagem;
    procedure prc_Calcular_Processo;
    procedure prc_Atualizar_Ind;
    procedure prc_Copiar_Atelier;
    procedure prc_Calcular_Financeiro(Prazo : Integer);
    procedure prc_Gravar_Financeiro(Percentual : Real);
    procedure prc_Calcular_MaoObra;
    procedure prc_Gravar_Ficha;
    procedure prc_Gravar_Processo;

  public
    { Public declarations }
  end;

var
  frmCadCustoNV: TfrmCadCustoNV;

implementation

uses
  UMenu, DmdDatabase, rsDBUtils, uUtilPadrao, UEscolhe_Filial,
  USel_Produto, UCopiar_Mat_CombNV, StrUtils, Math, URelCusto,
  UDMCopiaCustoNV;

{$R *.dfm}

procedure TfrmCadCustoNV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadCustoNV.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDmCadCustoNV);
end;

procedure TfrmCadCustoNV.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDmCadCustoNV := TDmCadCustoNV.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDmCadCustoNV);
  TS_Processo.TabVisible := (fDmCadCustoNV.qParametros_GeralUSA_CUSTO_PROC_ATE.AsString = 'P');
  TS_Terceiro.TabVisible := ((fDmCadCustoNV.qParametros_GeralUSA_CUSTO_PROC_ATE.AsString = 'A') or (fDmCadCustoNV.qParametros_GeralUSA_CUSTO_PROC_ATE.IsNull));
  Label19.Visible := (fDmCadCustoNV.qParametros_GeralUSA_CUSTO_PROC_ATE.AsString = 'P');
  DBEdit15.Visible := (fDmCadCustoNV.qParametros_GeralUSA_CUSTO_PROC_ATE.AsString = 'P');

  Label10.Visible := ((fDmCadCustoNV.qParametros_GeralUSA_CUSTO_PROC_ATE.AsString = 'A') or (fDmCadCustoNV.qParametros_GeralUSA_CUSTO_PROC_ATE.IsNull));
  DBEdit5.Visible := ((fDmCadCustoNV.qParametros_GeralUSA_CUSTO_PROC_ATE.AsString = 'A') or (fDmCadCustoNV.qParametros_GeralUSA_CUSTO_PROC_ATE.IsNull));
  Panel11.Visible := (fDmCadCustoNV.qParametros_FinUSA_CLIENTE_CUSTO.AsString = 'S');


  DBEdit8.ReadOnly := not(fDmCadCustoNV.qParametros_FinINFORMA_MOBRA_MAN.AsString = 'S');
  if fDmCadCustoNV.qParametros_FinINFORMA_MOBRA_MAN.AsString = 'S' then
    DBEdit8.Color := clWindow
  else
    DBEdit8.Color := clMoneyGreen;

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if SMDBGrid1.Columns[i].FieldName = 'NOME_CLIENTE' then
      SMDBGrid1.Columns[i].Visible := (fDmCadCustoNV.qParametros_FinUSA_CLIENTE_CUSTO.AsString = 'S');
  end;
end;

procedure TfrmCadCustoNV.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadCustoNV.btnExcluirClick(Sender: TObject);
var
  vCodAux: Integer;
begin
  if not (fDmCadCustoNV.cdsConsulta.Active) or (fDmCadCustoNV.cdsConsulta.IsEmpty) or (fDmCadCustoNV.cdsConsultaID.AsInteger <= 0) then
    exit;
  prc_Posiciona_Registro;

  if fDmCadCustoNV.cdsCustoNV.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir a referência ' + fDmCadCustoNV.cdsConsultaREFERENCIA.AsString + ', do registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  vCodAux := fDmCadCustoNV.cdsConsulta.RecNo;
  prc_Excluir_Registro;
  prc_Consultar;
  if vCodAux <= fDmCadCustoNV.cdsConsulta.RecordCount then
    fDmCadCustoNV.cdsConsulta.RecNo := vCodAux;
end;

procedure TfrmCadCustoNV.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadCustoNV.btnAlterarClick(Sender: TObject);
var
  i: Integer;
begin
  if (fDmCadCustoNV.cdsCustoNV.IsEmpty) or not (fDmCadCustoNV.cdsCustoNV.Active) or (fDmCadCustoNV.cdsCustoNVID.AsInteger < 1) then
    exit;
  fDmCadCustoNV.cdsCustoNV.Edit;
  prc_Habilita;
end;

procedure TfrmCadCustoNV.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadCustoNV.btnCancelarClick(Sender: TObject);
begin
  if (fDmCadCustoNV.cdsCustoNV.State in [dsBrowse]) or not (fDmCadCustoNV.cdsCustoNV.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  fDmCadCustoNV.cdsCustoNV.CancelUpdates;

  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadCustoNV.prc_Consultar(ID: Integer = 0);
begin
  SMDBGrid1.UnSelectAllClick(SMDBGrid1);
  SMDBGrid1.DisableScroll;
  fDmCadCustoNV.cdsConsulta.Close;
  fDmCadCustoNV.sdsConsulta.CommandText := fDmCadCustoNV.ctConsulta + ' WHERE 0 = 0 ';
  if ID > 0 then
    fDmCadCustoNV.sdsConsulta.CommandText := fDmCadCustoNV.sdsConsulta.CommandText + ' AND (C.ID = ' + IntToStr(ID) + ')'
  else
  begin
    if Trim(Edit4.Text) <> '' then
      fDmCadCustoNV.sdsConsulta.CommandText := fDmCadCustoNV.sdsConsulta.CommandText + ' AND (C.REFERENCIA LIKE ' + QuotedStr('%' + Edit4.Text + '%') + ')';
    if trim(rxdbFilial.Text) <> '' then
      fDmCadCustoNV.sdsConsulta.CommandText := fDmCadCustoNV.sdsConsulta.CommandText + ' AND (C.FILIAL = ' + IntToStr(rxdbFilial.KeyValue) + ')';
    if DateEdit1.Date > 10 then
      fDmCadCustoNV.sdsConsulta.CommandText := fDmCadCustoNV.sdsConsulta.CommandText + ' AND C.DTCALCULO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      fDmCadCustoNV.sdsConsulta.CommandText := fDmCadCustoNV.sdsConsulta.CommandText + ' AND C.DTCALCULO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  end;
  fDmCadCustoNV.cdsConsulta.Open;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmCadCustoNV.prc_Excluir_Registro;
var
  vCodAux: Integer;
begin
  try
    vCodAux := fDmCadCustoNV.cdsCustoNVID.AsInteger;
    fDmCadCustoNV.prc_Excluir;
  except
    on e: Exception do
    begin
      prc_Consultar;
      if vCodAux > 0 then
        fDmCadCustoNV.cdsConsulta.Locate('ID', vCodAux, ([Locaseinsensitive]));
      raise;
    end
  end;
end;

procedure TfrmCadCustoNV.prc_Gravar_Registro;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vIPI_Suspenso, vPIS_Suspenso: string;
  vCodAux: Integer;
begin
  if fDmCadCustoNV.fnc_Erro_Registro then
  begin
    MessageDlg(fDmCadCustoNV.vMsgErro, mtError, [mbOk], 0);
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
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 ' + ' WHERE TABELA = ' + QuotedStr('CUSTO');
    sds.ExecSQL();

    vCodAux := fDmCadCustoNV.cdsCustoNVID.AsInteger;
    fDmCadCustoNV.prc_Gravar;

    fDmCadCustoNV.cdsCustoNV_Mat.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

    prc_Habilita;
    RzPageControl1.ActivePage := TS_Consulta;

    if (not (fDmCadCustoNV.cdsConsulta.Active)) or (not fDmCadCustoNV.cdsConsulta.Locate('ID', vCodAux, ([Locaseinsensitive]))) then
      prc_Consultar(vCodAux);
    fDmCadCustoNV.cdsConsulta.Locate('ID', vCodAux, ([Locaseinsensitive]));

  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise Exception.Create('Erro ao gravar o Registro: ' + #13 + e.Message);
    end;
  end;
  FreeAndNil(sds);

end;

procedure TfrmCadCustoNV.prc_Inserir_Registro(Indice : Boolean = True);
var
  i: Integer;
begin
  prc_Informar_Filial;
  if vFilial <= 0 then
    exit;

  fDmCadCustoNV.prc_Inserir;

  if fDmCadCustoNV.cdsCustoNV.State in [dsBrowse] then
    Exit;

  fDmCadCustoNV.cdsCustoNVFILIAL.AsInteger     := vFilial;
  fDmCadCustoNV.cdsCustoNVDTCALCULO.AsDateTime := Date;

  RzPageControl1.ActivePage := TS_Cadastro;

  prc_Habilita;

  DBEdit12.SetFocus;

  if Indice then
    prc_Atualizar_Ind;
end;

procedure TfrmCadCustoNV.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not (fDmCadCustoNV.cdsCustoNV.State in [dsEdit, dsInsert]) then
      prc_Posiciona_Registro;
  end;
end;

procedure TfrmCadCustoNV.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadCustoNV.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := True;
  if fDmCadCustoNV.cdsCustoNV.State in [dsEdit, dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      CanClose := False
    else
      CanClose := True;
  end;
end;

procedure TfrmCadCustoNV.Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCustoNV.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not (pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadCustoNV.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
  DateEdit1.Clear;
  dateedit2.Clear;
end;

procedure TfrmCadCustoNV.prc_Posiciona_Registro;
begin
  fDmCadCustoNV.prc_Localizar(fDmCadCustoNV.cdsConsultaID.AsInteger);
  fDmCadCustoNV.cdsCustoNV_Mat.Close;
  fDmCadCustoNV.cdsCustoNV_Mat.Open;
  fDmCadCustoNV.cdsCustoNV_Mat.Last;
  fDmCadCustoNV.cdsCustoNV_Mat.First;
  fDmCadCustoNV.cdsCustoNV_Atelier.Close;
  fDmCadCustoNV.cdsCustoNV_Atelier.Open;
  fDmCadCustoNV.cdsCustoNV_Atelier.Last;
  fDmCadCustoNV.cdsCustoNV_Atelier.First;
  fDmCadCustoNV.cdsCustoNV_Ind.Close;
  fDmCadCustoNV.cdsCustoNV_Ind.Open;
  fDmCadCustoNV.cdsCustoNV_Ind.Last;
  fDmCadCustoNV.cdsCustoNV_Ind.First;
  fDmCadCustoNV.cdsCustoNV_Processo.Close;
  fDmCadCustoNV.cdsCustoNV_Processo.Open;
  fDmCadCustoNV.cdsCustoNV_Processo.Last;
  fDmCadCustoNV.cdsCustoNV_Processo.First;
end;

procedure TfrmCadCustoNV.Excel1Click(Sender: TObject);
begin
  prc_CriaExcel(SMDBGrid1.DataSource);
end;

procedure TfrmCadCustoNV.prc_CriaExcel(vDados: TDataSource);
var
  planilha: variant;
  vTexto: string;
begin
  Screen.Cursor := crHourGlass;
  vDados.DataSet.First;

  planilha := CreateOleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do tela para o Excel';
  planilha.visible := true;

  prc_Preencher_Excel2(planilha, vDados, SMDBGrid1);

  planilha.columns.Autofit;
  vTexto := ExtractFilePath(Application.ExeName);

  vTexto := vTexto + Name + '_Pessoa_'+Monta_Numero(DateToStr(Date),0);

  Planilha.ActiveWorkBook.SaveAs(vTexto);
  Screen.Cursor := crDefault;
end;

procedure TfrmCadCustoNV.prc_Informar_Filial;
var
  ffrmEscolhe_Filial: TfrmEscolhe_Filial;
begin
  if fDmCadCustoNV.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDmCadCustoNV.cdsFilial.Last;
    vFilial      := fDmCadCustoNV.cdsFilialID.AsInteger;
    vFilial_Nome := fDmCadCustoNV.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDmCadCustoNV.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);
  lblNome_Filial.Caption := vFilial_Nome;
end;

procedure TfrmCadCustoNV.prc_Habilita;
begin
  TS_Consulta.TabEnabled := not(TS_Consulta.TabEnabled);
  btnAlterar.Enabled     := not(btnAlterar.Enabled);
  btnConfirmar.Enabled   := not(btnConfirmar.Enabled);
  Panel3.Enabled         := not(Panel3.Enabled);
  pnlCadastro.Enabled    := not(pnlCadastro.Enabled);

  btnInserir_Mat.Enabled      := not(btnInserir_Mat.Enabled);
  btnAlterar_Mat.Enabled      := not(btnAlterar_Mat.Enabled);
  btnExclui_Mat.Enabled       := not(btnExclui_Mat.Enabled);
  btnCopiar_Mat.Enabled       := not(btnCopiar_Mat.Enabled);
  btnCopiar_Mat_Comb.Enabled  := not(btnCopiar_Mat_Comb.Enabled);
  btnCalcular.Enabled         := not(btnCalcular.Enabled);

  btnInserir_Ate.Enabled := not(btnInserir_Ate.Enabled);
  btnAlterar_Ate.Enabled := not(btnAlterar_Ate.Enabled);
  btnExcluir_Ate.Enabled := not(btnExcluir_Ate.Enabled);
  btnCopiar_Ate.Enabled  := not(btnCopiar_Ate.Enabled);
  btnInserir_Ind.Enabled := not(btnInserir_Ind.Enabled);
  btnAlterar_Ind.Enabled := not(btnAlterar_Ind.Enabled);
  btnExcluir_Ind.Enabled := not(btnExcluir_Ind.Enabled);
  btnAtualizar_Ind.Enabled := not(btnAtualizar_Ind.Enabled);

  btnInserir_Proc.Enabled := not(btnInserir_Proc.Enabled);
  btnAlterar_Proc.Enabled := not(btnAlterar_Proc.Enabled);
  btnExcluir_Proc.Enabled := not(btnExcluir_Proc.Enabled);

  SMDBGrid2.ReadOnly      := not(SMDBGrid2.ReadOnly);
  SMDBGrid3.ReadOnly      := not(SMDBGrid3.ReadOnly);
  SMDBGrid4.ReadOnly      := not(SMDBGrid4.ReadOnly);
  SMDBGrid5.ReadOnly      := not(SMDBGrid5.ReadOnly);
end;

procedure TfrmCadCustoNV.DBEdit12Exit(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger > 0 then
  begin
    if not fDmCadCustoNV.fnc_Produto_Existe(fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger,'') then
    begin
      MessageDlg('*** ID do Produto não encontrado!', mtInformation, [mbOk], 0);
      DBEdit12.SetFocus;
      Edit1.Text := '';
    end
    else
    begin
      dbDateEdit1.SetFocus;
      fDmCadCustoNV.cdsCustoNVREFERENCIA.AsString := fDmCadCustoNV.qProdutoREFERENCIA.AsString;
      Edit1.Text := fDmCadCustoNV.qProdutoNOME.AsString;
    end;
  end;
end;

procedure TfrmCadCustoNV.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    if (trim(DBEdit12.Text) = '') or (StrToInt(DBEdit12.Text) <= 0) then
      DBEdit11.SetFocus
    else
      dbDateEdit1.SetFocus;
  end
  else
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto;
end;

procedure TfrmCadCustoNV.prc_Chama_Form_Produto;
var
  vAux : String;
begin
  vAux := Monta_Numero(DBEdit12.Text,0);
  if trim(DBEdit12.Text) <> '' then
    vCodProduto_Pos := StrToInt(DBEdit12.Text)
  else
  if trim(DBEdit11.Text) <> '' then
    vReferencia_Pos := DBEdit11.Text;
  frmSel_Produto  := TfrmSel_Produto.Create(Self);
  frmSel_Produto.vVenda := True;
  frmSel_Produto.vTipo_Prod := 'P';
  frmSel_Produto.ShowModal;
  if vCodProduto_Pos > 0 then
  begin
    fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger := vCodProduto_Pos;
    fDmCadCustoNV.fnc_Produto_Existe(fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger,'');
    Edit1.Text := fDmCadCustoNV.qProdutoNOME.AsString;
    fDmCadCustoNV.cdsCustoNVREFERENCIA.AsString := fDmCadCustoNV.qProdutoREFERENCIA.AsString;
  end;
end;

procedure TfrmCadCustoNV.DBEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto
  else
  if (key = vk_return) then
  begin
    if trim(DBEdit11.Text) <> '' then
      dbDateEdit1.SetFocus;
  end;

end;

procedure TfrmCadCustoNV.DBEdit11Enter(Sender: TObject);
begin
  DBEdit11.ReadOnly := (fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger > 0);
end;

procedure TfrmCadCustoNV.btnInserir_MatClick(Sender: TObject);
begin
  fDmCadCustoNV.prc_Inserir_Itens;

  ffrmCadCustoNV_Mat := TfrmCadCustoNV_Mat.Create(self);
  ffrmCadCustoNV_Mat.fDmCadCustoNV := fDmCadCustoNV;
  ffrmCadCustoNV_Mat.ShowModal;
  FreeAndNil(ffrmCadCustoNV_Mat);
end;

procedure TfrmCadCustoNV.btnAlterar_MatClick(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNV_MatITEM.AsInteger <= 0 then
    exit;
  fDmCadCustoNV.cdsCustoNV_Mat.Edit;
  ffrmCadCustoNV_Mat := TfrmCadCustoNV_Mat.Create(self);
  ffrmCadCustoNV_Mat.fDmCadCustoNV := fDmCadCustoNV;
  ffrmCadCustoNV_Mat.ShowModal;
  FreeAndNil(ffrmCadCustoNV_Mat);
end;

procedure TfrmCadCustoNV.btnExclui_MatClick(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNV_MatITEM.AsInteger <= 0 then
    exit;
  if MessageDlg('Deseja excluir o registro selecionado?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDmCadCustoNV.cdsCustoNV_Mat.Delete;
end;

procedure TfrmCadCustoNV.btnCopiar_MatClick(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger <= 0 then
  begin
    MessageDlg('*** Produto não foi informado ', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDmCadCustoNV.cdsCustoNV_Mat.RecordCount > 0 then
  begin
    MessageDlg('*** Já existe material lançado!', mtInformation, [mbOk], 0);
    exit;
  end;
  prc_Copiar_Consumo;
  fDmCadCustoNV.qMaterial.Close;
  prc_Gravar_Embalagem;
end;

procedure TfrmCadCustoNV.prc_Copiar_Consumo;
var
  vConsumo : Variant;
  v2 : String;
begin
  fDmCadCustoNV.cdsProduto_Consumo.Close;
  fDmCadCustoNV.sdsProduto_Consumo.ParamByName('ID').AsInteger := fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger;
  fDmCadCustoNV.cdsProduto_Consumo.Open;
  fDmCadCustoNV.cdsProduto_Consumo.First;
  while not fDmCadCustoNV.cdsProduto_Consumo.Eof do
  begin
    vConsumo := fDmCadCustoNV.cdsProduto_ConsumoQTD_CONSUMO.AsVariant;
    prc_Grava_Custo_Mat(fDmCadCustoNV.cdsProduto_ConsumoID_MATERIAL.AsInteger,
                        0,fDmCadCustoNV.cdsProduto_ConsumoUNIDADE.AsString,'',
                        fDmCadCustoNV.cdsProduto_ConsumoQTD_CONSUMO.AsVariant);
    fDmCadCustoNV.cdsProduto_Consumo.Next;
  end;
end;

procedure TfrmCadCustoNV.btnCopiar_Mat_CombClick(Sender: TObject);
var
  ffrmCopiar_Mat_CombNV: TfrmCopiar_Mat_CombNV;
begin
  fDmCadCustoNV.vItem_Comb := 0;
  ffrmCopiar_Mat_CombNV := TfrmCopiar_Mat_CombNV.Create(self);
  ffrmCopiar_Mat_CombNV.fDmCadCustoNV   := fDmCadCustoNV;
  ffrmCopiar_Mat_CombNV.ShowModal;
  FreeAndNil(ffrmCopiar_Mat_CombNV);
  if fDmCadCustoNV.vItem_Comb > 0 then
  begin
    fDmCadCustoNV.cdsProduto_Comb_Mat.Close;
    fDmCadCustoNV.sdsProduto_Comb_Mat.ParamByName('ID').AsInteger   := fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger;
    fDmCadCustoNV.sdsProduto_Comb_Mat.ParamByName('ITEM').AsInteger := fDmCadCustoNV.vItem_Comb;
    fDmCadCustoNV.cdsProduto_Comb_Mat.Open;
    fDmCadCustoNV.cdsProduto_Comb_Mat.First;
    while not fDmCadCustoNV.cdsProduto_Comb_Mat.Eof do
    begin
      prc_Grava_Custo_Mat(fDmCadCustoNV.cdsProduto_Comb_MatID_MATERIAL.AsInteger,
                          fDmCadCustoNV.cdsProduto_Comb_MatID_COR_MAT.AsInteger,
                          fDmCadCustoNV.cdsProduto_Comb_MatUNIDADE.AsString,
                          fDmCadCustoNV.cdsProduto_Comb_MatNOME_COR.AsString,
                          StrToFloat(FormatFloat('0.00000',fDmCadCustoNV.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat)));
      fDmCadCustoNV.cdsProduto_Comb_Mat.Next;
    end;
  end;
  prc_Gravar_Embalagem;
end;

procedure TfrmCadCustoNV.prc_Grava_Custo_Mat(ID_Material, ID_Cor : Integer ; Unidade, Nome_Cor : String ; Consumo : Variant);
var
  vVlrAux : Real;
  vValor, vAux : Real;
  vVlrUnitario : Real;
begin
  fDmCadCustoNV.prc_Inserir_Itens;

  fDmCadCustoNV.qMaterial.Close;
  fDmCadCustoNV.qMaterial.ParamByName('ID').AsInteger := ID_Material;
  fDmCadCustoNV.qMaterial.Open;

  fDmCadCustoNV.cdsCustoNV_MatID_MATERIAL.AsInteger  := ID_Material;
  fDmCadCustoNV.cdsCustoNV_MatID_COR.AsInteger       := ID_Cor;
  if trim(Unidade) <> '' then
    fDmCadCustoNV.cdsCustoNV_MatUNIDADE.AsString := Unidade
  else
    fDmCadCustoNV.cdsCustoNV_MatUNIDADE.AsString := fDmCadCustoNV.qMaterialUNIDADE.AsString;
  fDmCadCustoNV.cdsCustoNV_MatCONSUMO.AsVariant        := Consumo ;
  fDmCadCustoNV.cdsCustoNV_MatNOME_MATERIAL.AsString := fDmCadCustoNV.qMaterialNOME.AsString;
  fDmCadCustoNV.cdsCustoNV_MatNOME_COR.AsString      := Nome_Cor;
  fDmCadCustoNV.cdsCustoNV_MatPERC_IPI.AsFloat        := fDmCadCustoNV.qMaterialPERC_IPI.AsFloat;
  vVlrAux := 0;

  fDmCadCustoNV.cdsCustoNV_MatVLR_UNITARIO.AsFloat := fDmCadCustoNV.qMaterialPRECO_CUSTO.AsFloat;
  if (fDmCadCustoNV.cdsCustoNV_MatID_COR.AsInteger > 0) and (fDmCadCustoNV.qMaterialUSA_PRECO_COR.AsString = 'S') then
  begin
    fDmCadCustoNV.qMaterial_Cor.Close;
    fDmCadCustoNV.qMaterial_Cor.ParamByName('ID').AsInteger                := fDmCadCustoNV.cdsCustoNV_MatID_MATERIAL.AsInteger;
    fDmCadCustoNV.qMaterial_Cor.ParamByName('ID_COR_COMBINACAO').AsInteger := fDmCadCustoNV.cdsCustoNV_MatID_COR.AsInteger;
    fDmCadCustoNV.qMaterial_Cor.Open;
    if StrToFloat(FormatFloat('0.00000',fDmCadCustoNV.qMaterial_CorPRECO_CUSTO.AsFloat)) > 0 then
      fDmCadCustoNV.cdsCustoNV_MatVLR_UNITARIO.AsFloat := fDmCadCustoNV.qMaterial_CorPRECO_CUSTO.AsFloat;
  end;
  if fDmCadCustoNV.cdsFilialSIMPLES.AsString = 'S' then
    fDmCadCustoNV.cdsCustoNV_MatPERC_ICMS.AsFloat := 0
  else
  begin
    fDmCadCustoNV.qUF.Close;
    fDmCadCustoNV.qUF.ParamByName('UF').AsString := fDmCadCustoNV.cdsFilialUF.AsString;
    fDmCadCustoNV.qUF.Open;
    fDmCadCustoNV.cdsCustoNV_MatPERC_ICMS.AsFloat := fDmCadCustoNV.qUFPERC_ICMS.AsFloat;
  end;
  vValor       := 0;
  vAux         := 0;
  vVlrUnitario := fDmCadCustoNV.cdsCustoNV_MatVLR_UNITARIO.AsFloat;
  if StrToFloat(FormatFloat('0.000',fDmCadCustoNV.cdsCustoNV_MatPERC_ICMS.AsFloat)) > 0 then
  begin
    vAux   := StrToFloat(FormatFloat('0.000',(vVlrUnitario * fDmCadCustoNV.cdsCustoNV_MatPERC_ICMS.AsFloat) / 100));
    vValor := vValor + vAux;
  end;
  if StrToFloat(FormatFloat('0.000',fDmCadCustoNV.cdsCustoNV_MatPERC_IPI.AsFloat)) > 0 then
  begin
    vAux   := StrToFloat(FormatFloat('0.000',(vVlrUnitario * fDmCadCustoNV.cdsCustoNV_MatPERC_IPI.AsFloat) / 100));
    vValor := vValor + vAux;
  end;
  vVlrUnitario := vVlrUnitario + vValor;
  fDmCadCustoNV.cdsCustoNV_MatVLR_LIQUIDO.AsFloat    := vVlrUnitario;
  fDmCadCustoNV.cdsCustoNV_MatVLR_CUSTO.AsFloat      := StrToFloat(FormatFloat('0.000',fDmCadCustoNV.cdsCustoNV_MatVLR_LIQUIDO.AsFloat * fDmCadCustoNV.cdsCustoNV_MatCONSUMO.AsFloat));
  //if StrToFloat(FormatFloat('0.000',fDmCadCustoNV.cdsCustoNVd.AsFloat)) > 0 then
  //  fDmCadCustoNV.cdsCustoNV_MatVLR_CUSTO_DOLAR.AsFloat := StrToFloat(FormatFloat('0.000',fDmCadCustoNV.cdsCustoNV_MatVLR_CUSTO.AsFloat / fDmCadCustoNV.cdsCustoDOLAR.AsFloat))
  //else
    fDmCadCustoNV.cdsCustoNV_MatVLR_CUSTO_DOLAR.AsFloat := 0;
  fDmCadCustoNV.cdsCustoNV_MatCOURO.AsString := 'N';
  fDmCadCustoNV.cdsCustoNV_Mat.Post;
end;

procedure TfrmCadCustoNV.prc_Calcular_MateriaPrima;
var
  vMatPrima, vMatPrimaDolar : Real;
begin
  vMatPrima      := 0;
  vMatPrimaDolar := 0;

  fDmCadCustoNV.cdsCustoNV_Mat.First;
  while not fDmCadCustoNV.cdsCustoNV_Mat.Eof do
  begin
    vMatPrima      := vMatPrima + fDmCadCustoNV.cdsCustoNV_MatVLR_CUSTO.AsFloat;
    vMatPrimaDolar := vMatPrimaDolar + fDmCadCustoNV.cdsCustoNV_MatVLR_CUSTO_DOLAR.AsFloat;

    fDmCadCustoNV.cdsCustoNV_Mat.Next;
  end;
  fDmCadCustoNV.cdsCustoNVVLR_MATERIAL.AsFloat := vMatPrima;
end;

procedure TfrmCadCustoNV.DBEdit11Exit(Sender: TObject);
begin
  if (trim(DBEdit11.Text) <> '') and not(DBEdit11.ReadOnly) then
  begin
    if not fDmCadCustoNV.fnc_Produto_Existe(0,DBEdit11.Text) then
    begin
      MessageDlg('*** Referência não encontrada ', mtInformation, [mbOk], 0);
      DBEdit11.SetFocus;
      Edit1.Text := '';
    end
    else
    begin
      fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger := fDmCadCustoNV.qProdutoID.AsInteger;
      Edit1.Text := fDmCadCustoNV.qProdutoNOME.AsString;
      dbDateEdit1.SetFocus;
    end;
  end;
end;

procedure TfrmCadCustoNV.prc_Atualizar_Ind;
begin
  fDmCadCustoNV.cdsCustoNV_Ind.EmptyDataSet;
  fDmCadCustoNV.cdsIndice.Close;
  fDmCadCustoNV.cdsIndice.Open;
  fDmCadCustoNV.cdsIndice.First;
  while not fDmCadCustoNV.cdsIndice.Eof do
  begin
    fDmCadCustoNV.prc_Inserir_Ind;
    fDmCadCustoNV.cdsCustoNV_IndID_INDICE.AsInteger     := fDmCadCustoNV.cdsIndiceID.AsInteger;
    fDmCadCustoNV.cdsCustoNV_IndTIPO_PV.AsString        := fDmCadCustoNV.cdsIndiceTIPO_PV.AsString;
    fDmCadCustoNV.cdsCustoNV_IndVALOR_INDICE.AsFloat    := StrToFloat(FormatFloat('0.000',fDmCadCustoNV.cdsIndiceVALOR.AsFloat));
    fDmCadCustoNV.cdsCustoNV_IndVALOR_CALCULADO.AsFloat := 0;
    fDmCadCustoNV.cdsCustoNV_IndclNome_Indice.AsString  := fDmCadCustoNV.cdsIndiceNOME.AsString;
    if fDmCadCustoNV.cdsCustoNV_IndTIPO_PV.AsString = 'P' then
      fDmCadCustoNV.cdsCustoNV_IndPV.AsString := '%'
    else
      fDmCadCustoNV.cdsCustoNV_IndPV.AsString := 'R$';
    if fDmCadCustoNV.cdsIndiceLUCRO.AsString = 'S' then
      fDmCadCustoNV.cdsCustoNVPERC_LUCRO.AsFloat := StrToFloat(FormatFloat('0.00',fDmCadCustoNV.cdsIndiceVALOR.AsFloat));
    if fDmCadCustoNV.cdsIndiceFINANCEIRO.AsString = 'S' then
    begin
      fDmCadCustoNV.cdsCustoNVPERC_FINANCEIRO.AsFloat        := fDmCadCustoNV.cdsIndiceVALOR.AsFloat;
      fDmCadCustoNV.cdsCustoNVPERC_FINANCEIRO_PADRAO.AsFloat := fDmCadCustoNV.cdsIndiceVALOR.AsFloat;
      fDmCadCustoNV.cdsCustoNVPRAZO_DIAS.AsInteger           := fDmCadCustoNV.cdsIndicePRAZO_DIAS.AsInteger;
      fDmCadCustoNV.cdsCustoNVPRAZO_DIAS_PADRAO.AsInteger    := fDmCadCustoNV.cdsIndicePRAZO_DIAS.AsInteger;
    end;
    fDmCadCustoNV.cdsCustoNV_IndLUCRO.AsString      := fDmCadCustoNV.cdsIndiceLUCRO.AsString;
    fDmCadCustoNV.cdsCustoNV_IndFINANCEIRO.AsString := fDmCadCustoNV.cdsIndiceFINANCEIRO.AsString;
    fDmCadCustoNV.cdsCustoNV_Ind.Post;
    fDmCadCustoNV.cdsIndice.Next;
  end;
end;

procedure TfrmCadCustoNV.btnInserir_IndClick(Sender: TObject);
begin
  fDmCadCustoNV.prc_Inserir_Ind;

  ffrmCadCustoNV_Ind := TfrmCadCustoNV_Ind.Create(self);
  ffrmCadCustoNV_Ind.fDmCadCustoNV := fDmCadCustoNV;
  ffrmCadCustoNV_Ind.ShowModal;
  FreeAndNil(ffrmCadCustoNV_Ind);
end;

procedure TfrmCadCustoNV.btnAlterar_IndClick(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNV_IndITEM.AsInteger <= 0 then
    exit;

  fDmCadCustoNV.cdsCustoNV_Ind.Edit;
  ffrmCadCustoNV_Ind := TfrmCadCustoNV_Ind.Create(self);
  ffrmCadCustoNV_Ind.fDmCadCustoNV := fDmCadCustoNV;
  ffrmCadCustoNV_Ind.ShowModal;
  FreeAndNil(ffrmCadCustoNV_Ind);
end;

procedure TfrmCadCustoNV.btnExcluir_IndClick(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNV_IndITEM.AsInteger <= 0 then
    exit;

  if MessageDlg('Deseja excluir o registro selecionado?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDmCadCustoNV.cdsCustoNV_Ind.Delete;
end;

procedure TfrmCadCustoNV.btnAtualizar_IndClick(Sender: TObject);
begin
  if MessageDlg('Carregar novamente os índices?' , mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  prc_Atualizar_Ind;
end;

procedure TfrmCadCustoNV.btnCalcularClick(Sender: TObject);
var
  vVlrAux : Real;
begin
  SMDBGrid3.DisableScroll;
  prc_Calcular_MateriaPrima;
  prc_Calcular_Terceiro;
  if not(fDmCadCustoNV.qParametros_FinINFORMA_MOBRA_MAN.AsString = 'S') then
    prc_Calcular_MaoObra;
  prc_Calcular_Processo;
  prc_Soma_Total_Indice;

  fDmCadCustoNV.cdsCustoNVCOEFICIENTE.AsFloat := StrToFloat(FormatFloat('0.00000',(100 - fDmCadCustoNV.cdsCustoNVPERC_TOTAL_ENCARGOS.AsFloat)/100));

  vVlrAux := fDmCadCustoNV.cdsCustoNVVLR_MATERIAL.AsFloat + fDmCadCustoNV.cdsCustoNVVLR_TERCEIRO.AsFloat + fDmCadCustoNV.cdsCustoNVVLR_MAOOBRA.AsFloat+
           + fDmCadCustoNV.cdsCustoNVVLR_PROCESSO.AsFloat;
  if StrToFloat(FormatFloat('0.00',vVlrAux)) > 0 then
    vVlrAux := StrToFloat(FormatFloat('0.00',vVlrAux / fDmCadCustoNV.cdsCustoNVCOEFICIENTE.AsFloat));
  fDmCadCustoNV.cdsCustoNVPRECO_SUGERIDO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAux));
  //if StrToFloat(FormatFloat('0.00',fDmCadCustoNV.cdsCustoNVPRECO_VENDA.AsFloat)) < StrToFloat(FormatFloat('0.00',fDmCadCustoNV.cdsCustoNVPRECO_SUGERIDO.AsFloat)) then
    fDmCadCustoNV.cdsCustoNVPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.00',fDmCadCustoNV.cdsCustoNVPRECO_SUGERIDO.AsFloat));
  prc_Recalcular_Ind;
  SMDBGrid3.EnableScroll;
end;

procedure TfrmCadCustoNV.prc_Calcular_Terceiro;
var
  vValor : Real;
begin
  vValor := 0;
  fDmCadCustoNV.cdsCustoNV_Atelier.First;
  while not fDmCadCustoNV.cdsCustoNV_Atelier.Eof do
  begin
    vValor := vValor + fDmCadCustoNV.cdsCustoNV_AtelierVALOR.AsFloat;
    fDmCadCustoNV.cdsCustoNV_Atelier.Next;
  end;
  fDmCadCustoNV.cdsCustoNVVLR_TERCEIRO.AsFloat := vValor;
end;

procedure TfrmCadCustoNV.prc_Soma_Total_Indice;
var
  vValor : Real;
begin
  vValor := 0;
  fDmCadCustoNV.cdsCustoNV_Ind.First;
  while not fDmCadCustoNV.cdsCustoNV_Ind.Eof do
  begin
    if fDmCadCustoNV.cdsCustoNV_IndTIPO_PV.AsString = 'P' then
      vValor := vValor + fDmCadCustoNV.cdsCustoNV_IndVALOR_INDICE.AsFloat;
    fDmCadCustoNV.cdsCustoNV_Ind.Next;
  end;
  fDmCadCustoNV.cdsCustoNVPERC_TOTAL_ENCARGOS.AsFloat := StrToFloat(FormatFloat('0.00',vValor));
end;

procedure TfrmCadCustoNV.btnInserir_AteClick(Sender: TObject);
begin
  fDmCadCustoNV.prc_Inserir_Ate;

  ffrmCadCustoNV_Ate := TfrmCadCustoNV_Ate.Create(self);
  ffrmCadCustoNV_Ate.fDmCadCustoNV := fDmCadCustoNV;
  ffrmCadCustoNV_Ate.ShowModal;
  FreeAndNil(ffrmCadCustoNV_Ate);
end;

procedure TfrmCadCustoNV.prc_Recalcular_Ind;
var
  vVlrAux : Real;
begin
  fDmCadCustoNV.cdsCustoNV_Ind.First;
  while not fDmCadCustoNV.cdsCustoNV_Ind.Eof do
  begin
    if StrToFloat(FormatFloat('0.000',fDmCadCustoNV.cdsCustoNV_IndVALOR_INDICE.AsFloat)) > 0 then
    begin
      fDmCadCustoNV.cdsCustoNV_Ind.Edit;
      if StrToFloat(FormatFloat('0.00',fDmCadCustoNV.cdsCustoNVPRECO_SUGERIDO.AsFloat)) <= 0 then
        fDmCadCustoNV.cdsCustoNV_IndVALOR_CALCULADO.AsFloat := 0
      else
      begin
        vVlrAux := StrToFloat(FormatFloat('0.000',(fDmCadCustoNV.cdsCustoNVPRECO_SUGERIDO.AsFloat * fDmCadCustoNV.cdsCustoNV_IndVALOR_INDICE.AsFloat) / 100));
        fDmCadCustoNV.cdsCustoNV_IndVALOR_CALCULADO.AsFloat := StrToFloat(FormatFloat('0.000',vVlrAux));
      end;
      fDmCadCustoNV.cdsCustoNV_Ind.Post;
    end;
    fDmCadCustoNV.cdsCustoNV_Ind.Next;
  end;
end;

procedure TfrmCadCustoNV.prc_Gravar_Embalagem;
var
  vConsumo : Real;
begin
  fDmCadCustoNV.cdsProduto_Emb.Close;
  fDmCadCustoNV.sdsProduto_Emb.ParamByName('ID').AsInteger := fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger;
  fDmCadCustoNV.cdsProduto_Emb.Open;
  fDmCadCustoNV.cdsProduto_Emb.First;
  while not fDmCadCustoNV.cdsProduto_Emb.Eof do
  begin
    vConsumo := StrToFloat(FormatFloat('0.00000',fDmCadCustoNV.cdsProduto_EmbQTD_EMB.AsFloat));
    if fDmCadCustoNV.cdsProduto_EmbTIPO_EMB.AsString = 'C' then
      vConsumo := StrToFloat(FormatFloat('0.00000',1 / fDmCadCustoNV.cdsProduto_EmbQTD_EMB.AsFloat));
    prc_Grava_Custo_Mat(fDmCadCustoNV.cdsProduto_EmbID_MATERIAL.AsInteger,
                        0,'','',
                        StrToFloat(FormatFloat('0.00000',vConsumo)));
    fDmCadCustoNV.cdsProduto_Emb.Next;
  end;

end;

procedure TfrmCadCustoNV.DBEdit7Enter(Sender: TObject);
begin
  vPercLucro := StrToFloat(FormatFloat('0.000',fDmCadCustoNV.cdsCustoNVPERC_LUCRO.AsFloat));
end;

procedure TfrmCadCustoNV.DBEdit7Exit(Sender: TObject);
begin
  if StrToFloat(FormatFloat('0.000',fDmCadCustoNV.cdsCustoNVPERC_LUCRO.AsFloat)) <> StrToFloat(FormatFloat('0.000',vPercLucro)) then
  begin
    if fDmCadCustoNV.cdsCustoNV_Ind.Locate('LUCRO', 'S' , ([Locaseinsensitive])) then
    begin
      fDmCadCustoNV.cdsCustoNV_Ind.Edit;
      fDmCadCustoNV.cdsCustoNV_IndVALOR_INDICE.AsFloat := StrToFloat(FormatFloat('0.00#', fDmCadCustoNV.cdsCustoNVPERC_LUCRO.AsFloat));
      fDmCadCustoNV.cdsCustoNV_Ind.Post;
    end;
  end;
end;

procedure TfrmCadCustoNV.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    btnCalcular.SetFocus;
end;

procedure TfrmCadCustoNV.SMDBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.000',fDmCadCustoNV.cdsCustoNV_IndVALOR_INDICE.AsFloat)) > 0 then
    AFont.Style := [fsBold];
end;

procedure TfrmCadCustoNV.btnAlterar_AteClick(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNV_Atelier.IsEmpty then
    exit;

  fDmCadCustoNV.cdsCustoNV_Atelier.Edit;
  ffrmCadCustoNV_Ate := TfrmCadCustoNV_Ate.Create(self);
  ffrmCadCustoNV_Ate.fDmCadCustoNV := fDmCadCustoNV;
  ffrmCadCustoNV_Ate.ShowModal;
  FreeAndNil(ffrmCadCustoNV_Ate);
end;

procedure TfrmCadCustoNV.btnExcluir_AteClick(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNV_Atelier.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o registro selecionado?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDmCadCustoNV.cdsCustoNV_Atelier.Delete;
end;

procedure TfrmCadCustoNV.prc_Calcular_Processo;
var
  vValor : Real;
begin
  vValor := 0;
  fDmCadCustoNV.cdsCustoNV_Processo.First;
  while not fDmCadCustoNV.cdsCustoNV_Processo.Eof do
  begin
    vValor := vValor + fDmCadCustoNV.cdsCustoNV_ProcessoVLR_TOTAL.AsFloat;
    fDmCadCustoNV.cdsCustoNV_Processo.Next;
  end;
  fDmCadCustoNV.cdsCustoNVVLR_PROCESSO.AsFloat := vValor;
end;

procedure TfrmCadCustoNV.btnInserir_ProcClick(Sender: TObject);
begin
  fDmCadCustoNV.prc_Inserir_Proc;

  ffrmCadCustoNV_Proc := TfrmCadCustoNV_Proc.Create(self);
  ffrmCadCustoNV_Proc.fDmCadCustoNV := fDmCadCustoNV;
  ffrmCadCustoNV_Proc.ShowModal;
  FreeAndNil(ffrmCadCustoNV_Proc);
end;

procedure TfrmCadCustoNV.btnExcluir_ProcClick(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNV_Processo.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o registro selecionado?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDmCadCustoNV.cdsCustoNV_Processo.Delete;
end;

procedure TfrmCadCustoNV.btnCopiar_AteClick(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger <= 0 then
  begin
    MessageDlg('*** Produto não foi informado ', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDmCadCustoNV.cdsCustoNV_Atelier.RecordCount > 0 then
  begin
    MessageDlg('*** Já existe Terceiro/Atelier lançado!', mtInformation, [mbOk], 0);
    exit;
  end;
  prc_Copiar_Atelier;
end;

procedure TfrmCadCustoNV.prc_Copiar_Atelier;
begin
  fDmCadCustoNV.cdsProduto_Ate.Close;
  fDmCadCustoNV.sdsProduto_Ate.ParamByName('ID').AsInteger := fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger;
  fDmCadCustoNV.cdsProduto_Ate.Open;
  fDmCadCustoNV.cdsProduto_Ate.First;
  while not fDmCadCustoNV.cdsProduto_Ate.Eof do
  begin
    fDmCadCustoNV.prc_Inserir_Ate;
    fDmCadCustoNV.cdsCustoNV_AtelierID_ATELIER.AsInteger  := fDmCadCustoNV.cdsProduto_AteID_ATELIER.AsInteger;
    fDmCadCustoNV.cdsCustoNV_AtelierNOME_ATELIER.AsString := fDmCadCustoNV.cdsProduto_AteNOME_ATELIER.AsString;
    fDmCadCustoNV.cdsCustoNV_AtelierVALOR.AsFloat         := StrToFloat(FormatFloat('0.0000',fDmCadCustoNV.cdsProduto_AteVLR_PAR.AsFloat));
    if fDmCadCustoNV.cdsProduto_AteID_SETOR.AsInteger > 0 then
      fDmCadCustoNV.cdsCustoNV_AtelierID_SETOR.AsInteger := fDmCadCustoNV.cdsProduto_AteID_SETOR.AsInteger;
    fDmCadCustoNV.cdsCustoNV_Atelier.Post;
    fDmCadCustoNV.cdsProduto_Ate.Next;
  end;
end;

procedure TfrmCadCustoNV.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    if Monta_Numero(DBEdit10.Text,0) = '' then
      prc_Calcular_Financeiro(0)
    else
      prc_Calcular_Financeiro(StrToInt(DBEdit10.Text));
    btnCalcular.SetFocus;  
  end;
end;

procedure TfrmCadCustoNV.prc_Calcular_Financeiro(Prazo : Integer);
var
  vPerc : Real;
begin
  vPerc := 0;
  if Prazo = vPrazoDias then
    exit; 
  if (StrToFloat(FormatFloat('0.000',Prazo)) > StrToFloat(FormatFloat('0.000',0)))
    and (fDmCadCustoNV.cdsCustoNVPRAZO_DIAS_PADRAO.AsInteger > 0) then
  begin
    vPerc := StrToFloat(FormatFloat('0.00',(fDmCadCustoNV.cdsCustoNVPERC_FINANCEIRO_PADRAO.AsFloat / fDmCadCustoNV.cdsCustoNVPRAZO_DIAS_PADRAO.AsInteger)
           * Prazo));
    prc_Gravar_Financeiro(StrToFloat(FormatFloat('0.00',vPerc)));
    vPrazoDias := Prazo;
  end;
end;

procedure TfrmCadCustoNV.DBEdit10Enter(Sender: TObject);
begin
  vPrazoDias := fDmCadCustoNV.cdsCustoNVPRAZO_DIAS.AsInteger;
end;

procedure TfrmCadCustoNV.DBEdit10Exit(Sender: TObject);
begin
  prc_Calcular_Financeiro(fDmCadCustoNV.cdsCustoNVPRAZO_DIAS.AsInteger);
end;

procedure TfrmCadCustoNV.DBEdit14Enter(Sender: TObject);
begin
  vPercFinanceiro := StrToFloat(FormatFloat('0.00',fDmCadCustoNV.cdsCustoNVPERC_FINANCEIRO.AsFloat));
end;

procedure TfrmCadCustoNV.prc_Gravar_Financeiro(Percentual : Real);
begin
  if fDmCadCustoNV.cdsCustoNV_Ind.Locate('FINANCEIRO', 'S' , ([Locaseinsensitive])) then
  begin
    fDmCadCustoNV.cdsCustoNV_Ind.Edit;
    fDmCadCustoNV.cdsCustoNV_IndVALOR_INDICE.AsFloat := StrToFloat(FormatFloat('0.00',Percentual));
    fDmCadCustoNV.cdsCustoNV_Ind.Post;
    vPercFinanceiro := StrToFloat(FormatFloat('0.00',Percentual));
    fDmCadCustoNV.cdsCustoNVPERC_FINANCEIRO.AsFloat := StrToFloat(FormatFloat('0.00',Percentual));
  end;
end;

procedure TfrmCadCustoNV.DBEdit14Exit(Sender: TObject);
begin
  if StrToFloat(FormatFloat('0.00',fDmCadCustoNV.cdsCustoNVPERC_FINANCEIRO.AsFloat)) <> StrToFloat(FormatFloat('0.00',vPercFinanceiro)) then
    prc_Gravar_Financeiro(StrToFloat(FormatFloat('0.00',fDmCadCustoNV.cdsCustoNVPERC_FINANCEIRO.AsFloat)));
end;

procedure TfrmCadCustoNV.DBEdit14KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    if Monta_Numero(DBEdit14.Text,0) = '' then
      prc_Gravar_Financeiro(StrToFloat(FormatFloat('0.00',0)))
    else
      prc_Gravar_Financeiro(StrToFloat(FormatFloat('0.00',StrToFloat(DBEdit14.Text))));
  end;
end;

procedure TfrmCadCustoNV.prc_Calcular_MaoObra;
var
  vTotalDesp : Real;
  vQtdPares : Integer;
  vMediaMensal : Real;
  vCustoPar : Real;
begin
  fDmCadCustoNV.qTotalFixa.Close;
  fDmCadCustoNV.qTotalFixa.Open;
  vTotalDesp := StrToFloat(FormatFloat('0.00',fDmCadCustoNV.qTotalFixaVLR_ORC.AsFloat));

  fDmCadCustoNV.qTotalPares.Close;
  fDmCadCustoNV.qTotalPares.ParamByName('ANO').AsInteger := YearOf(fDmCadCustoNV.cdsCustoNVDTCALCULO.AsDateTime);
  fDmCadCustoNV.qTotalPares.Open;
  vQtdPares := fDmCadCustoNV.qTotalParesPREVISAO.AsInteger;
  if (vQtdPares > 0) then
    vMediaMensal := StrToFloat(FormatFloat('0.00',vQtdPares / 12))
  else
    vMediaMensal := 0;
  if (vTotalDesp > 0) and (vMediaMensal > 0) then
    vCustoPar := StrToFloat(FormatFloat('0.00',vTotalDesp / vMediaMensal))
  else
    vCustoPar := 0;
  fDmCadCustoNV.cdsCustoNVVLR_MAOOBRA.AsFloat := StrToFloat(FormatFloat('0.00',vCustoPar));
end;

procedure TfrmCadCustoNV.btnGravarFichaClick(Sender: TObject);
begin
  if not(fDmCadCustoNV.cdsConsulta.Active) or (fDmCadCustoNV.cdsConsulta.IsEmpty) then
    exit;

  if MessageDlg('Deseja gravar a ficha técnica da referência ' + fDmCadCustoNV.cdsConsultaREFERENCIA.AsString + '?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  fDmCadCustoNV.cdsProduto_Consumo.Close;
  fDmCadCustoNV.sdsProduto_Consumo.ParamByName('ID').AsInteger := fDmCadCustoNV.cdsConsultaID.AsInteger;
  fDmCadCustoNV.cdsProduto_Consumo.Open;
  if not fDmCadCustoNV.cdsProduto_Consumo.IsEmpty then
  begin
    MessageDlg('*** Operação não pode ser efetuada, pois a Ficha Técnica já possue consumo!', mtInformation, [mbOk], 0);
    exit;
  end;

  prc_Posiciona_Registro;
  prc_Gravar_Ficha;
  prc_Gravar_Processo;
end;

procedure TfrmCadCustoNV.prc_Gravar_Ficha;
var
  vItemAux : Integer;
begin
  vItemAux := 0;
  fDmCadCustoNV.cdsCustoNV_Mat.First;
  while not fDmCadCustoNV.cdsCustoNV_Mat.Eof do
  begin
    vItemAux := vItemAux + 1;
    fDmCadCustoNV.cdsProduto_Consumo.Insert;
    fDmCadCustoNV.cdsProduto_ConsumoID.AsInteger          := fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger;
    fDmCadCustoNV.cdsProduto_ConsumoITEM.AsInteger        := vItemAux;
    fDmCadCustoNV.cdsProduto_ConsumoID_MATERIAL.AsInteger := fDmCadCustoNV.cdsCustoNV_MatID_MATERIAL.AsInteger;
    fDmCadCustoNV.cdsProduto_ConsumoUNIDADE.AsString      := fDmCadCustoNV.cdsCustoNV_MatUNIDADE.AsString;
    if fDmCadCustoNV.qParametros_ProdID_POSICAO_PADRAO.AsInteger > 0 then
      fDmCadCustoNV.cdsProduto_ConsumoID_POSICAO.AsInteger := fDmCadCustoNV.qParametros_ProdID_POSICAO_PADRAO.AsInteger
    else
      fDmCadCustoNV.cdsProduto_ConsumoID_POSICAO.Clear;
    fDmCadCustoNV.cdsProduto_ConsumoTIPO_CONSUMO.AsString := 'G';
    fDmCadCustoNV.cdsProduto_ConsumoIMP_ROTULO.AsString   := 'N';
    fDmCadCustoNV.cdsProduto_ConsumoIMP_TALAO.AsString    := 'N';
    fDmCadCustoNV.cdsProduto_ConsumoID_SETOR.Clear;
    fDmCadCustoNV.cdsProduto_ConsumoTINGIMENTO.AsString   := 'N';
    fDmCadCustoNV.cdsProduto_ConsumoESPECIFICO.AsString   := 'N';
    fDmCadCustoNV.cdsProduto_ConsumoQTD_CONSUMO.AsFloat   := StrToFloat(FormatFloat('0.00000',fDmCadCustoNV.cdsCustoNV_MatCONSUMO.AsFloat));
    fDmCadCustoNV.cdsProduto_ConsumoQTD_UNIDADE.AsFloat   := 0;
    if fDmCadCustoNV.cdsProduto_ConsumoQTD_CONSUMO.AsFloat > 0 then
      fDmCadCustoNV.cdsProduto_ConsumoQTD_UNIDADE.AsFloat := StrToFloat(FormatFloat('0.00000',1 / fDmCadCustoNV.cdsProduto_ConsumoQTD_CONSUMO.AsFloat));
    fDmCadCustoNV.cdsProduto_Consumo.Post;
    fDmCadCustoNV.cdsCustoNV_Mat.Next;
  end;
  if vItemAux > 0 then
    fDmCadCustoNV.cdsProduto_Consumo.ApplyUpdates(0);
end;

procedure TfrmCadCustoNV.prc_Gravar_Processo;
var
  vItemAux : Integer;
begin
  fDmCadCustoNV.cdsProduto_Processo.Close;
  fDmCadCustoNV.sdsProduto_Processo.ParamByName('ID').AsInteger := fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger;
  fDmCadCustoNV.cdsProduto_Processo.Open;
  if fDmCadCustoNV.cdsProduto_Processo.IsEmpty then
    exit;

  vItemAux := 0;
  fDmCadCustoNV.cdsCustoNV_Processo.First;
  while not fDmCadCustoNV.cdsCustoNV_Processo.Eof do
  begin
    vItemAux := vItemAux +1;

    fDmCadCustoNV.cdsCustoNV_Processo.Insert;
    fDmCadCustoNV.cdsProduto_ProcessoID.AsInteger   := fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger;
    fDmCadCustoNV.cdsProduto_ProcessoITEM.AsInteger := vItemAux;
    fDmCadCustoNV.cdsProduto_ProcessoID_PROCESSO.AsInteger := fDmCadCustoNV.cdsCustoNV_ProcessoID_PROCESSO.AsInteger;
    fDmCadCustoNV.cdsProduto_ProcessoID_SETOR.Clear;
    fDmCadCustoNV.cdsProduto_ProcessoQTD.AsFloat  := StrToFloat(FormatFloat('0.00000',fDmCadCustoNV.cdsCustoNV_ProcessoCONSUMO.AsFloat));
    fDmCadCustoNV.cdsProduto_ProcessoUN.Clear;
    fDmCadCustoNV.cdsProduto_ProcessoVLR_UNIT.AsFloat  := StrToFloat(FormatFloat('0.0000',fDmCadCustoNV.cdsCustoNV_ProcessoVLR_UNITARIO.AsFloat));
    fDmCadCustoNV.cdsProduto_ProcessoVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDmCadCustoNV.cdsCustoNV_ProcessoVLR_TOTAL.AsFloat));
    fDmCadCustoNV.cdsProduto_ProcessoOBS.Clear;
    fDmCadCustoNV.cdsProduto_Processo.Post;

    fDmCadCustoNV.cdsCustoNV_Processo.Next;
  end;

  if vItemAux > 0 then
    fDmCadCustoNV.cdsProduto_Processo.ApplyUpdates(0);
end;

procedure TfrmCadCustoNV.btnAlterar_ProcClick(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNV_Processo.IsEmpty then
    exit;

  fDmCadCustoNV.cdsCustoNV_Processo.Edit;
  ffrmCadCustoNV_Proc := TfrmCadCustoNV_Proc.Create(self);
  ffrmCadCustoNV_Proc.fDmCadCustoNV := fDmCadCustoNV;
  ffrmCadCustoNV_Proc.ShowModal;
  FreeAndNil(ffrmCadCustoNV_Proc);
end;

procedure TfrmCadCustoNV.btnCopiarClick(Sender: TObject);
var
  fDmCopiaCustoNV: TDmCopiaCustoNV;
  i : Integer;
  x : Integer;
begin
  if not (fDmCadCustoNV.cdsConsulta.Active) or (fDmCadCustoNV.cdsConsulta.IsEmpty) or (fDmCadCustoNV.cdsConsultaID.AsInteger <= 0) then
    exit;
  fDmCopiaCustoNV := TDmCopiaCustoNV.Create(Self);

  try
    fDmCopiaCustoNV.prc_Localizar(fDmCadCustoNV.cdsConsultaID.AsInteger);
    prc_Posiciona_Registro;

    prc_Inserir_Registro(False);

    for x := 0 to (fDmCopiaCustoNV.cdsCustoNV.FieldCount - 1) do
    begin
      try
        if (fDmCopiaCustoNV.cdsCustoNV.Fields[x].FieldName <> 'ID') then
          fDmCadCustoNV.cdsCustoNV.FieldByName(fDmCopiaCustoNV.cdsCustoNV.Fields[x].FieldName).AsVariant := fDmCopiaCustoNV.cdsCustoNV.Fields[x].Value;
      except
      end;
    end;

    fDmCopiaCustoNV.cdsCustoNV_Mat.First;
    while not fDmCopiaCustoNV.cdsCustoNV_Mat.Eof do
    begin
      fDmCadCustoNV.prc_Inserir_Itens;
      for x := 0 to (fDmCopiaCustoNV.cdsCustoNV_Mat.FieldCount - 1) do
      begin
        try
          if (fDmCopiaCustoNV.cdsCustoNV_Mat.Fields[x].FieldName <> 'ID') then
            fDmCadCustoNV.cdsCustoNV_Mat.FieldByName(fDmCopiaCustoNV.cdsCustoNV_Mat.Fields[x].FieldName).AsVariant := fDmCopiaCustoNV.cdsCustoNV_Mat.Fields[x].Value;
        except
        end;
      end;
      fDmCadCustoNV.cdsCustoNV_Mat.Post;

      fDmCopiaCustoNV.cdsCustoNV_Mat.Next;
    end;

    fDmCopiaCustoNV.cdsCustoNV_Atelier.First;
    while not fDmCopiaCustoNV.cdsCustoNV_Atelier.Eof do
    begin
      fDmCadCustoNV.prc_Inserir_Ate;
      for x := 0 to (fDmCopiaCustoNV.cdsCustoNV_Atelier.FieldCount - 1) do
      begin
        try
          if (fDmCopiaCustoNV.cdsCustoNV_Atelier.Fields[x].FieldName <> 'ID') then
            fDmCadCustoNV.cdsCustoNV_Atelier.FieldByName(fDmCopiaCustoNV.cdsCustoNV_Atelier.Fields[x].FieldName).AsVariant := fDmCopiaCustoNV.cdsCustoNV_Atelier.Fields[x].Value;
        except
        end;
      end;
      fDmCadCustoNV.cdsCustoNV_Atelier.Post;

      fDmCopiaCustoNV.cdsCustoNV_Atelier.Next;
    end;

    fDmCopiaCustoNV.cdsCustoNV_Ind.First;
    while not fDmCopiaCustoNV.cdsCustoNV_Ind.Eof do
    begin
      fDmCadCustoNV.prc_Inserir_Ind;
      for x := 0 to (fDmCopiaCustoNV.cdsCustoNV_Ind.FieldCount - 1) do
      begin
        try
          if (fDmCopiaCustoNV.cdsCustoNV_Ind.Fields[x].FieldName <> 'ID') then
            fDmCadCustoNV.cdsCustoNV_Ind.FieldByName(fDmCopiaCustoNV.cdsCustoNV_Ind.Fields[x].FieldName).AsVariant := fDmCopiaCustoNV.cdsCustoNV_Ind.Fields[x].Value;
        except
        end;
      end;
      fDmCadCustoNV.cdsCustoNV_Ind.Post;

      fDmCopiaCustoNV.cdsCustoNV_Ind.Next;
    end;

    fDmCopiaCustoNV.cdsCustoNV_Processo.First;
    while not fDmCopiaCustoNV.cdsCustoNV_Processo.Eof do
    begin
      fDmCadCustoNV.prc_Inserir_Proc;
      for x := 0 to (fDmCopiaCustoNV.cdsCustoNV_Processo.FieldCount - 1) do
      begin
        try
          if (fDmCopiaCustoNV.cdsCustoNV_Processo.Fields[x].FieldName <> 'ID') then
            fDmCadCustoNV.cdsCustoNV_Processo.FieldByName(fDmCopiaCustoNV.cdsCustoNV_Processo.Fields[x].FieldName).AsVariant := fDmCopiaCustoNV.cdsCustoNV_Processo.Fields[x].Value;
        except
        end;
      end;
      fDmCadCustoNV.cdsCustoNV_Processo.Post;

      fDmCopiaCustoNV.cdsCustoNV_Processo.Next;
    end;
  finally
    FreeAndNil(fDmCopiaCustoNV);
  end;
end;

end.

