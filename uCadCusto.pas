unit uCadCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, DBCtrls, RzButton,
  RxDBComb, RxLookup, db, Mask, Grids, DateUtils, DBGrids, SMDBGrid, Buttons, ExtCtrls, UCBase, uDmCadCusto, RzDBChk,
  RzPanel, ToolEdit, RXDBCtrl, RzLstBox,
  NxCollection, RzRadChk, dbXPress, SqlExpr, ComCtrls,
  RzChkLst, Menus, ComObj, CurrEdit, UCadCusto_Mat;

type
  TfrmCadCusto = class(TForm)
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
    Label4: TLabel;
    Label7: TLabel;
    Label36: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBEdit33: TDBEdit;
    Panel4: TPanel;
    Label5: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label3: TLabel;
    Edit1: TEdit;
    Label17: TLabel;
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
    RzPageControl2: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Panel5: TPanel;
    SMDBGrid2: TSMDBGrid;
    TabSheet2: TRzTabSheet;
    Label18: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit34: TDBEdit;
    btnInserir_Mat: TNxButton;
    btnAlterar_Mat: TNxButton;
    btnExclui_Mat: TNxButton;
    btnCopiar_Mat: TNxButton;
    btnCopiar_Mat_Comb: TNxButton;
    btnCalcular: TNxButton;
    Label39: TLabel;
    DBEdit35: TDBEdit;
    UCControls1: TUCControls;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnAtualiza_Indices: TNxButton;
    Label40: TLabel;
    btnAtualizar_Mat: TNxButton;
    PopupMenu1: TPopupMenu;
    AtualizarPreodeTodos1: TMenuItem;
    AtualizarSomenteosPreosZerados1: TMenuItem;
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
    procedure Excel1Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11Enter(Sender: TObject);
    procedure btnAtualiza_IndicesClick(Sender: TObject);
    procedure btnInserir_MatClick(Sender: TObject);
    procedure btnAlterar_MatClick(Sender: TObject);
    procedure btnExclui_MatClick(Sender: TObject);
    procedure btnCopiar_MatClick(Sender: TObject);
    procedure btnCopiar_Mat_CombClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure AtualizarPreodeTodos1Click(Sender: TObject);
    procedure AtualizarSomenteosPreosZerados1Click(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDmCadCusto: TDmCadCusto;
    ffrmCadCusto_Mat: TfrmCadCusto_Mat;
    vImpCalc : String;
    vItem : Integer;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer = 0);
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Posiciona_Registro;
    procedure prc_CriaExcel(vDados: TDataSource);
    procedure prc_Informar_Filial;
    procedure prc_Habilita;
    procedure prc_Chama_Form_Produto;
    procedure Busca_Indice;
    procedure prc_Copiar_Consumo;
    procedure prc_Grava_Custo_Mat(ID_Material, ID_Cor : Integer ; Unidade, Nome_Cor : String ; Consumo : Real ; Ajusta_Preco : Boolean = False);
    procedure Calcular_MateriaPrima;
    procedure Monta_Resumo;
    procedure Grava_mResumo(Tipo : Integer ; Nome : String ; VlrMI, VlrExp : Real);
    procedure prc_Abrir_TipoInd;
    procedure prc_Atualizar_Preco(Todos : Boolean);

  public
    { Public declarations }
  end;

var
  frmCadCusto: TfrmCadCusto;

implementation

uses
  UMenu, DmdDatabase, rsDBUtils, uUtilPadrao, UEscolhe_Filial,
  USel_Produto, UCopiar_Mat_Comb, StrUtils, Math, URelCusto;

{$R *.dfm}

procedure TfrmCadCusto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadCusto.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDmCadCusto);
end;

procedure TfrmCadCusto.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDmCadCusto := TDmCadCusto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDmCadCusto);
end;

procedure TfrmCadCusto.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadCusto.btnExcluirClick(Sender: TObject);
var
  vCodAux: Integer;
begin
  if not (fDmCadCusto.cdsConsulta.Active) or (fDmCadCusto.cdsConsulta.IsEmpty) or (fDmCadCusto.cdsConsultaID.AsInteger <= 0) then
    exit;
  prc_Posiciona_Registro;

  if fDmCadCusto.cdsCusto.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir a referência ' + fDmCadCusto.cdsConsultaREFERENCIA.AsString + ', do registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  vCodAux := fDmCadCusto.cdsConsulta.RecNo;
  prc_Excluir_Registro;
  prc_Consultar;
  if vCodAux <= fDmCadCusto.cdsConsulta.RecordCount then
    fDmCadCusto.cdsConsulta.RecNo := vCodAux;
end;

procedure TfrmCadCusto.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadCusto.btnAlterarClick(Sender: TObject);
var
  i: Integer;
begin
  if (fDmCadCusto.cdsCusto.IsEmpty) or not (fDmCadCusto.cdsCusto.Active) or (fDmCadCusto.cdsCustoID.AsInteger < 1) then
    exit;
  fDmCadCusto.cdsCusto.Edit;
  prc_Habilita;
end;

procedure TfrmCadCusto.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadCusto.btnCancelarClick(Sender: TObject);
begin
  if (fDmCadCusto.cdsCusto.State in [dsBrowse]) or not (fDmCadCusto.cdsCusto.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  fDmCadCusto.cdsCusto.CancelUpdates;

  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadCusto.prc_Consultar(ID: Integer = 0);
begin
  SMDBGrid1.UnSelectAllClick(SMDBGrid1);
  SMDBGrid1.DisableScroll;
  fDmCadCusto.cdsConsulta.Close;
  fDmCadCusto.sdsConsulta.CommandText := fDmCadCusto.ctConsulta + ' WHERE 0 = 0 ';
  if ID > 0 then
    fDmCadCusto.sdsConsulta.CommandText := fDmCadCusto.sdsConsulta.CommandText + ' AND (C.ID = ' + IntToStr(ID) + ')'
  else
  begin
    if Trim(Edit4.Text) <> '' then
      fDmCadCusto.sdsConsulta.CommandText := fDmCadCusto.sdsConsulta.CommandText + ' AND (P.REFERENCIA LIKE ' + QuotedStr('%' + Edit4.Text + '%') + ')';
    if trim(rxdbFilial.Text) <> '' then
      fDmCadCusto.sdsConsulta.CommandText := fDmCadCusto.sdsConsulta.CommandText + ' AND (C.FILIAL = ' + IntToStr(rxdbFilial.KeyValue) + ')';
    if DateEdit1.Date > 10 then
      fDmCadCusto.sdsConsulta.CommandText := fDmCadCusto.sdsConsulta.CommandText + ' AND C.DTCALCULO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      fDmCadCusto.sdsConsulta.CommandText := fDmCadCusto.sdsConsulta.CommandText + ' AND C.DTCALCULO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  end;
  fDmCadCusto.cdsConsulta.Open;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmCadCusto.prc_Excluir_Registro;
var
  vCodAux: Integer;
begin
  try
    vCodAux := fDmCadCusto.cdsCustoID.AsInteger;
    fDmCadCusto.prc_Excluir;
  except
    on e: Exception do
    begin
      prc_Consultar;
      if vCodAux > 0 then
        fDmCadCusto.cdsConsulta.Locate('ID', vCodAux, ([Locaseinsensitive]));
      raise;
    end
  end;
end;

procedure TfrmCadCusto.prc_Gravar_Registro;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vIPI_Suspenso, vPIS_Suspenso: string;
  vCodAux: Integer;
begin
  if fDmCadCusto.fnc_Erro_Registro then
  begin
    MessageDlg(fDmCadCusto.vMsgErro, mtError, [mbOk], 0);
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

    vCodAux := fDmCadCusto.cdsCustoID.AsInteger;
    fDmCadCusto.prc_Gravar;

    fDmCadCusto.cdsCusto_Mat.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

    prc_Habilita;
    RzPageControl1.ActivePage := TS_Consulta;

    if (not (fDmCadCusto.cdsConsulta.Active)) or (not fDmCadCusto.cdsConsulta.Locate('ID', vCodAux, ([Locaseinsensitive]))) then
      prc_Consultar(vCodAux);
    fDmCadCusto.cdsConsulta.Locate('ID', vCodAux, ([Locaseinsensitive]));

  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise Exception.Create('Erro ao gravar o Registro: ' + #13 + e.Message);
    end;
  end;
  FreeAndNil(sds);

end;

procedure TfrmCadCusto.prc_Inserir_Registro;
var
  i: Integer;
begin
  prc_Informar_Filial;
  if vFilial <= 0 then
    exit;

  fDmCadCusto.prc_Inserir;

  if fDmCadCusto.cdsCusto.State in [dsBrowse] then
    Exit;

  fDmCadCusto.cdsCustoFILIAL.AsInteger     := vFilial;
  fDmCadCusto.cdsCustoDTCALCULO.AsDateTime := Date;
  //btnAtualiza_IndicesClick(nil);

  RzPageControl1.ActivePage := TS_Cadastro;

  prc_Habilita;

  DBEdit12.SetFocus;
end;

procedure TfrmCadCusto.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not (fDmCadCusto.cdsCusto.State in [dsEdit, dsInsert]) then
      prc_Posiciona_Registro;
    prc_Abrir_TipoInd;
  end;
end;

procedure TfrmCadCusto.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadCusto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := True;
  if fDmCadCusto.cdsCusto.State in [dsEdit, dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      CanClose := False
    else
      CanClose := True;
  end;
end;

procedure TfrmCadCusto.Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCusto.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: string;
begin
  ColunaOrdenada := Column.FieldName;
  fDmCadCusto.cdsConsulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadCusto.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not (pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadCusto.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
  DateEdit1.Clear;
  dateedit2.Clear;
end;

procedure TfrmCadCusto.prc_Posiciona_Registro;
begin
  fDmCadCusto.prc_Localizar(fDmCadCusto.cdsConsultaID.AsInteger);
  fDmCadCusto.cdsCusto_Mat.Close;
  fDmCadCusto.cdsCusto_Mat.Open;
end;

procedure TfrmCadCusto.Excel1Click(Sender: TObject);
begin
  prc_CriaExcel(SMDBGrid1.DataSource);
end;

procedure TfrmCadCusto.prc_CriaExcel(vDados: TDataSource);
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

procedure TfrmCadCusto.prc_Informar_Filial;
var
  ffrmEscolhe_Filial: TfrmEscolhe_Filial;
begin
  if fDmCadCusto.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDmCadCusto.cdsFilial.Last;
    vFilial      := fDmCadCusto.cdsFilialID.AsInteger;
    vFilial_Nome := fDmCadCusto.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDmCadCusto.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);
  lblNome_Filial.Caption := vFilial_Nome;
end;

procedure TfrmCadCusto.prc_Habilita;
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
  btnAtualizar_Mat.Enabled    := not(btnAtualizar_Mat.Enabled);
end;

procedure TfrmCadCusto.DBEdit12Exit(Sender: TObject);
begin
  if fDmCadCusto.cdsCustoID_PRODUTO.AsInteger > 0 then
  begin
    if not fDmCadCusto.fnc_Produto_Existe(fDmCadCusto.cdsCustoID_PRODUTO.AsInteger,'') then
    begin
      MessageDlg('*** ID do Produto não encontrado!', mtInformation, [mbOk], 0);
      DBEdit12.SetFocus;
      Edit1.Text := '';
    end
    else
    begin
      DBEdit33.SetFocus;
      fDmCadCusto.cdsCustoREFERENCIA.AsString := fDmCadCusto.qProdutoREFERENCIA.AsString;
      Edit1.Text := fDmCadCusto.qProdutoNOME.AsString;
    end;
  end;
end;

procedure TfrmCadCusto.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    if (trim(DBEdit12.Text) = '') or (StrToInt(DBEdit12.Text) <= 0) then
      DBEdit11.SetFocus
    else
      DBEdit33.SetFocus;
  end
  else
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto;
end;

procedure TfrmCadCusto.prc_Chama_Form_Produto;
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
    fDmCadCusto.cdsCustoID_PRODUTO.AsInteger := vCodProduto_Pos;
    fDmCadCusto.fnc_Produto_Existe(fDmCadCusto.cdsCustoID_PRODUTO.AsInteger,'');
    Edit1.Text := fDmCadCusto.qProdutoNOME.AsString;
    fDmCadCusto.cdsCustoREFERENCIA.AsString := fDmCadCusto.qProdutoREFERENCIA.AsString;
  end;
end;

procedure TfrmCadCusto.DBEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto
  else
  if (key = vk_return) then
  begin
    if trim(DBEdit11.Text) <> '' then
      DBEdit33.SetFocus;
  end;

end;

procedure TfrmCadCusto.DBEdit11Enter(Sender: TObject);
begin
  DBEdit11.ReadOnly := (fDmCadCusto.cdsCustoID_PRODUTO.AsInteger > 0);
end;

procedure TfrmCadCusto.btnAtualiza_IndicesClick(Sender: TObject);
begin
  if (fDmCadCusto.cdsCustoFILIAL.AsInteger < 1) and (fDmCadCusto.cdsCustoID_PRODUTO.AsInteger < 1) then
  begin
    ShowMessage('Referência ou Filial não foram informados!');
    exit;
  end;

  if (fDMCadCusto.cdsCustoPERCCOMISSAO.AsFloat > 0) or
     (fDMCadCusto.cdsCustoPERCUNICO.AsFloat > 0) or
     (fDMCadCusto.cdsCustoPERCCUSTOFINANC.AsFloat > 0) or
     (fDMCadCusto.cdsCustoPERCLUCRO.AsFloat > 0) or
     (fDMCadCusto.cdsCustoPERCMATDIVERSOS.AsFloat > 0) or
     (fDMCadCusto.cdsCustoPERCFIXO.AsFloat > 0) or
     (fDMCadCusto.cdsCustoPERCFRETE.AsFloat > 0) or
     (fDMCadCusto.cdsCustoMAODEOBRA.AsFloat > 0) or
     (fDMCadCusto.cdsCustoPERCIMPOSTO.AsFloat > 0) then
    if MessageDlg('Confirma a atualização dos indices?', mtConfirmation,[mbOk,mbNo],0)=mrNO then
      exit;

  Busca_Indice;
end;

procedure TfrmCadCusto.Busca_Indice;
begin
  fDMCadCusto.cdsIndiceCusto.Close;
  fDMCadCusto.sdsIndiceCusto.CommandText := 'SELECT * FROM INDICECUSTO '
                                       + ' WHERE FILIAL = ' + fDmCadCusto.cdsCustoFILIAL.AsString
                                       + '   AND TIPO = ' + QuotedStr(fDmCadCusto.cdsCustoTIPO.AsString);
  fDMCadCusto.cdsIndiceCusto.Open;

  if fDMCadCusto.cdsIndiceCusto.IsEmpty then
  begin
    ShowMessage('indice não cadastrado!');
    exit;
  end;

  fDMCadCusto.cdsCustoPERCCOMISSAO.AsFloat    := fDMCadCusto.cdsIndiceCustoCOMISSAO.AsFloat;
  fDMCadCusto.cdsCustoPERCUNICO.AsFloat       := fDMCadCusto.cdsIndiceCustoPERCUNICO.AsFloat;
  fDMCadCusto.cdsCustoPERCCUSTOFINANC.AsFloat := fDMCadCusto.cdsIndiceCustoCUSTOFINANCEIRO.AsFloat;
  fDMCadCusto.cdsCustoPERCLUCRO.AsFloat       := fDMCadCusto.cdsIndiceCustoPERCLUCRO.AsFloat;
  fDMCadCusto.cdsCustoPERCMATDIVERSOS.AsFloat := fDMCadCusto.cdsIndiceCustoMATERIALDIVERSO.AsFloat;
  fDMCadCusto.cdsCustoPERCFIXO.AsFloat        := fDMCadCusto.cdsIndiceCustoFIXO.AsFloat;
  fDMCadCusto.cdsCustoPERCFRETE.AsFloat       := fDMCadCusto.cdsIndiceCustoFRETE.AsFloat;
  fDMCadCusto.cdsCustoMAODEOBRA.AsFloat       := fDMCadCusto.cdsIndiceCustoMAODEOBRA.AsFloat;
  fDMCadCusto.cdsCustoPERCIMPOSTO.AsFloat     := fDMCadCusto.cdsIndiceCustoIMPOSTO.AsFloat;
  fDMCadCusto.cdsCustoMAODEOBRADIRETA.AsFloat := fDMCadCusto.cdsIndiceCustoMAODEOBRADIRETA.AsFloat;
  fDMCadCusto.cdsCustoPERCICMS.AsFloat        := fDMCadCusto.cdsIndiceCustoPERCICMS.AsFloat;

  fDMCadCusto.cdsCustoPERCCOMISSAODOLAR.AsFloat    := fDMCadCusto.cdsIndiceCustoCOMISSAODOLAR.AsFloat;
  fDMCadCusto.cdsCustoPERCUNICODOLAR.AsFloat       := fDMCadCusto.cdsIndiceCustoPERCUNICODOLAR.AsFloat;
  fDMCadCusto.cdsCustoPERCCUSTOFINANCDOLAR.AsFloat := fDMCadCusto.cdsIndiceCustoCUSTOFINANCEIRODOLAR.AsFloat;
  fDMCadCusto.cdsCustoPERCLUCRODOLAR.AsFloat       := fDMCadCusto.cdsIndiceCustoPERCLUCRODOLAR.AsFloat;
  fDMCadCusto.cdsCustoPERCFRETEDOLAR.AsFloat       := fDMCadCusto.cdsIndiceCustoFRETEDOLAR.AsFloat;
  fDMCadCusto.cdsCustoPERCIMPOSTODOLAR.AsFloat     := fDMCadCusto.cdsIndiceCustoIMPOSTODOLAR.AsFloat;
  fDMCadCusto.cdsCustoPERCICMSDOLAR.AsFloat        := fDMCadCusto.cdsIndiceCustoPERCICMSDOLAR.AsFloat;
end;

procedure TfrmCadCusto.btnInserir_MatClick(Sender: TObject);
begin
  fDmCadCusto.prc_Inserir_Itens;

  ffrmCadCusto_Mat := TfrmCadCusto_Mat.Create(self);
  ffrmCadCusto_Mat.fDmCadCusto := fDMCadCusto;
  ffrmCadCusto_Mat.ShowModal;
  FreeAndNil(ffrmCadCusto_Mat);
end;

procedure TfrmCadCusto.btnAlterar_MatClick(Sender: TObject);
begin
  if fDmCadCusto.cdsCusto_MatITEM.AsInteger <= 0 then
    exit;
  fDmCadCusto.cdsCusto_Mat.Edit;
  ffrmCadCusto_Mat := TfrmCadCusto_Mat.Create(self);
  ffrmCadCusto_Mat.fDmCadCusto := fDMCadCusto;
  ffrmCadCusto_Mat.ShowModal;
  FreeAndNil(ffrmCadCusto_Mat);
end;

procedure TfrmCadCusto.btnExclui_MatClick(Sender: TObject);
begin
  if fDmCadCusto.cdsCusto_MatITEM.AsInteger <= 0 then
    exit;
  if MessageDlg('Deseja excluir o Material?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDmCadCusto.cdsCusto_Mat.Delete;
end;

procedure TfrmCadCusto.btnCopiar_MatClick(Sender: TObject);
begin
  if fDmCadCusto.cdsCustoID_PRODUTO.AsInteger <= 0 then
  begin
    MessageDlg('*** Produto não foi informado ', mtInformation, [mbOk], 0);
    exit;
  end;

  prc_Copiar_Consumo;
  fDmCadCusto.qMaterial.Close;
end;

procedure TfrmCadCusto.prc_Copiar_Consumo;
var
  vVlrAux : Real;
  vValor, vAux : Real;
  vVlrUnitario : Real;
begin
  fDmCadCusto.cdsProduto_Consumo.Close;
  fDmCadCusto.sdsProduto_Consumo.ParamByName('ID').AsInteger := fDmCadCusto.cdsCustoID_PRODUTO.AsInteger;
  fDmCadCusto.cdsProduto_Consumo.Open;
  fDmCadCusto.cdsProduto_Consumo.First;
  while not fDmCadCusto.cdsProduto_Consumo.Eof do
  begin
    prc_Grava_Custo_Mat(fDmCadCusto.cdsProduto_ConsumoID_MATERIAL.AsInteger,
                        0,fDmCadCusto.cdsProduto_ConsumoUNIDADE.AsString,'',
                        fDmCadCusto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat);
    fDmCadCusto.cdsProduto_Consumo.Next;
  end;
end;

procedure TfrmCadCusto.btnCopiar_Mat_CombClick(Sender: TObject);
var
  ffrmCopiar_Mat_Comb: TfrmCopiar_Mat_Comb;
begin
  fDmCadCusto.vItem_Comb := 0;
  ffrmCopiar_Mat_Comb := TfrmCopiar_Mat_Comb.Create(self);
  ffrmCopiar_Mat_Comb.fDmCadCusto   := fDmCadCusto;
  ffrmCopiar_Mat_Comb.ShowModal;
  FreeAndNil(ffrmCopiar_Mat_Comb);
  if fDmCadCusto.vItem_Comb > 0 then
  begin
    fDmCadCusto.cdsProduto_Comb_Mat.Close;
    fDmCadCusto.sdsProduto_Comb_Mat.ParamByName('ID').AsInteger   := fDmCadCusto.cdsCustoID_PRODUTO.AsInteger;
    fDmCadCusto.sdsProduto_Comb_Mat.ParamByName('ITEM').AsInteger := fDmCadCusto.vItem_Comb;
    fDmCadCusto.cdsProduto_Comb_Mat.Open;
    fDmCadCusto.cdsProduto_Comb_Mat.First;
    while not fDmCadCusto.cdsProduto_Comb_Mat.Eof do
    begin
      prc_Grava_Custo_Mat(fDmCadCusto.cdsProduto_Comb_MatID_MATERIAL.AsInteger,
                          fDmCadCusto.cdsProduto_Comb_MatID_COR_MAT.AsInteger,
                          fDmCadCusto.cdsProduto_Comb_MatUNIDADE.AsString,
                          fDmCadCusto.cdsProduto_Comb_MatNOME_COR.AsString,
                          fDmCadCusto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat);
      fDmCadCusto.cdsProduto_Comb_Mat.Next;
    end;
  end;
end;

procedure TfrmCadCusto.prc_Grava_Custo_Mat(ID_Material, ID_Cor : Integer ; Unidade, Nome_Cor : String ; Consumo : Real ; Ajusta_Preco : Boolean = False);
var
  vVlrAux : Real;
  vValor, vAux : Real;
  vVlrUnitario : Real;
begin
  fDmCadCusto.qMaterial.Close;
  fDmCadCusto.qMaterial.ParamByName('ID').AsInteger := ID_Material;
  fDmCadCusto.qMaterial.Open;

  if not Ajusta_Preco then
  begin
    fDmCadCusto.prc_Inserir_Itens;
    fDMCadCusto.cdsCusto_MatID_MATERIAL.AsInteger  := ID_Material;
    fDMCadCusto.cdsCusto_MatID_COR.AsInteger       := ID_Cor;
    fDMCadCusto.cdsCusto_MatUNIDADE.AsString       := Unidade;
    fDMCadCusto.cdsCusto_MatCONSUMO.AsFloat        := Consumo;
    fDMCadCusto.cdsCusto_MatNOME_MATERIAL.AsString := fDmCadCusto.qMaterialNOME.AsString;
    fDMCadCusto.cdsCusto_MatNOME_COR.AsString      := Nome_Cor;
    fDMCadCusto.cdsCusto_MatPERCIPI.AsFloat        := fDmCadCusto.qMaterialPERC_IPI.AsFloat;
  end
  else
    fDmCadCusto.cdsCusto_Mat.Edit;

  fDmCadCusto.cdsCusto_MatVLRUNITARIO.AsFloat := fDmCadCusto.qMaterialPRECO_CUSTO.AsFloat;
  if (fDmCadCusto.cdsCusto_MatID_COR.AsInteger > 0) and (fDmCadCusto.qMaterialUSA_PRECO_COR.AsString = 'S') then
  begin
    fDmCadCusto.qMaterial_Cor.Close;
    fDmCadCusto.qMaterial_Cor.ParamByName('ID').AsInteger                := fDmCadCusto.cdsCusto_MatID_MATERIAL.AsInteger;
    fDmCadCusto.qMaterial_Cor.ParamByName('ID_COR_COMBINACAO').AsInteger := fDmCadCusto.cdsCusto_MatID_COR.AsInteger;
    fDmCadCusto.qMaterial_Cor.Open;
    if StrToFloat(FormatFloat('0.00000',fDmCadCusto.qMaterial_CorPRECO_CUSTO.AsFloat)) > 0 then
      fDmCadCusto.cdsCusto_MatVLRUNITARIO.AsFloat := fDmCadCusto.qMaterial_CorPRECO_CUSTO.AsFloat;
  end;
  if fDmCadCusto.cdsFilialSIMPLES.AsString = 'S' then
    fDmCadCusto.cdsCusto_MatPERCICMS.AsFloat := 0
  else
  begin
    fDmCadCusto.qUF.Close;
    fDmCadCusto.qUF.ParamByName('UF').AsString := fDmCadCusto.cdsFilialUF.AsString;
    fDmCadCusto.qUF.Open;
    fDmCadCusto.cdsCusto_MatPERCICMS.AsFloat := fDmCadCusto.qUFPERC_ICMS.AsFloat;
  end;
  vValor       := 0;
  vAux         := 0;
  vVlrUnitario := fDMCadCusto.cdsCusto_MatVLRUNITARIO.AsFloat;
  if StrToFloat(FormatFloat('0.000',fDMCadCusto.cdsCusto_MatPERCICMS.AsFloat)) > 0 then
  begin
    vAux   := StrToFloat(FormatFloat('0.000',(vVlrUnitario * fDMCadCusto.cdsCusto_MatPERCICMS.AsFloat) / 100));
    vValor := vValor + vAux;
  end;
  if StrToFloat(FormatFloat('0.000',fDMCadCusto.cdsCusto_MatPERCIPI.AsFloat)) > 0 then
  begin
    vAux   := StrToFloat(FormatFloat('0.000',(vVlrUnitario * fDMCadCusto.cdsCusto_MatPERCIPI.AsFloat) / 100));
    vValor := vValor + vAux;
  end;
  vVlrUnitario := vVlrUnitario + vValor;
  fDMCadCusto.cdsCusto_MatVLRLIQUIDO.AsFloat    := vVlrUnitario;
  fDMCadCusto.cdsCusto_MatVLRCUSTO.AsFloat      := StrToFloat(FormatFloat('0.000',fDMCadCusto.cdsCusto_MatVLRLIQUIDO.AsFloat * fDMCadCusto.cdsCusto_MatCONSUMO.AsFloat));
  if StrToFloat(FormatFloat('0.000',fDMCadCusto.cdsCustoDOLAR.AsFloat)) > 0 then
    fDMCadCusto.cdsCusto_MatVLRCUSTODOLAR.AsFloat := StrToFloat(FormatFloat('0.000',fDMCadCusto.cdsCusto_MatVLRCUSTO.AsFloat / fDMCadCusto.cdsCustoDOLAR.AsFloat))
  else
    fDMCadCusto.cdsCusto_MatVLRCUSTODOLAR.AsFloat := 0;
  fDMCadCusto.cdsCusto_MatCOURO.AsString := 'N';
  fDMCadCusto.cdsCusto_Mat.Post;
end;

procedure TfrmCadCusto.btnCalcularClick(Sender: TObject);
var
  vMarkUp : Real;
  vVlrAux : Real;
begin
  if fDMCadCusto.cdsCusto.State in [dsBrowse] then
    fDMCadCusto.cdsCusto.Edit;

  fDMCadCusto.cdsCustoMAODEOBRADOLAR.AsFloat := StrToFloat(FormatFloat('0.000',0));
  if (fDMCadCusto.cdsCustoDOLAR.AsFloat > 0) and (fDMCadCusto.cdsCustoMAODEOBRA.AsFloat > 0) then
    fDMCadCusto.cdsCustoMAODEOBRADOLAR.AsFloat := StrToFloat(FormatFloat('0.000',fDMCadCusto.cdsCustoMAODEOBRA.AsFloat / fDMCadCusto.cdsCustoDOLAR.AsFloat));

  fDMCadCusto.cdsCustoTOTALINDICE.AsFloat := fDMCadCusto.cdsCustoPERCCOMISSAO.AsFloat
                                          + fDMCadCusto.cdsCustoPERCUNICO.AsFloat
                                          + fDMCadCusto.cdsCustoPERCCUSTOFINANC.AsFloat
                                          + fDMCadCusto.cdsCustoPERCLUCRO.AsFloat
                                          + fDMCadCusto.cdsCustoPERCMATDIVERSOS.AsFloat
                                          + fDMCadCusto.cdsCustoPERCFIXO.AsFloat
                                          + fDMCadCusto.cdsCustoPERCFRETE.AsFloat
                                          + fDMCadCusto.cdsCustoPERCIMPOSTO.AsFloat
                                          + fDMCadCusto.cdsCustoPERCICMS.AsFloat;

  fDMCadCusto.cdsCustoTOTALINDICEDOLAR.AsFloat := fDMCadCusto.cdsCustoPERCCOMISSAODOLAR.AsFloat
                                          + fDMCadCusto.cdsCustoPERCUNICODOLAR.AsFloat
                                          + fDMCadCusto.cdsCustoPERCCUSTOFINANCDOLAR.AsFloat
                                          + fDMCadCusto.cdsCustoPERCLUCRODOLAR.AsFloat
                                          + fDMCadCusto.cdsCustoPERCFRETEDOLAR.AsFloat
                                          + fDMCadCusto.cdsCustoPERCIMPOSTODOLAR.AsFloat
                                          + fDMCadCusto.cdsCustoPERCICMSDOLAR.AsFloat;

  fDMCadCusto.cdsCustoCUSTOPRODUCAO.AsFloat        := 0;
  fDMCadCusto.cdsCustoCUSTODIRETOVENDAS.AsFloat    := 0;
  fDMCadCusto.cdsCustoCUSTOPRODUCAOEXP.AsFloat     := 0;
  fDMCadCusto.cdsCustoCUSTODIRETOVENDASEXP.AsFloat := 0;

  Calcular_MateriaPrima;
  vImpCalc := 'C'; //Cálculo
  Monta_Resumo;

  fDMCadCusto.cdsCustoMARKUP.AsFloat    := StrToFloat(FormatFloat('0.0000',100 / (100 - fDMCadCusto.cdsCustoCUSTODIRETOVENDAS.AsFloat)));
  fDMCadCusto.cdsCustoMARKUPEXP.AsFloat := StrToFloat(FormatFloat('0.0000',100 / (100 - fDMCadCusto.cdsCustoCUSTODIRETOVENDASEXP.AsFloat)));
  
  fDMCadCusto.cdsCustoVLRTOTALREAL.AsFloat  := StrToFloat(FormatFloat('0.000',fDMCadCusto.cdsCustoCUSTOPRODUCAO.AsFloat * fDMCadCusto.cdsCustoMARKUP.AsFloat));
  fDMCadCusto.cdsCustoVLRTOTALEXP.AsFloat   := StrToFloat(FormatFloat('0.000',fDMCadCusto.cdsCustoCUSTOPRODUCAOEXP.AsFloat * fDMCadCusto.cdsCustoMARKUPEXP.AsFloat));

  if (StrToFloat(FormatFloat('0.0000',fDMCadCusto.cdsCustoDOLAR.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.0000',fDMCadCusto.cdsCustoVLRTOTALREAL.AsFloat)) > 0)  then
    fDMCadCusto.cdsCustoVLRTOTALDOLAR.AsFloat := StrToFloat(FormatFloat('0.000',fDMCadCusto.cdsCustoVLRTOTALREAL.AsFloat / fDMCadCusto.cdsCustoDOLAR.AsFloat))
  else
    fDMCadCusto.cdsCustoVLRTOTALDOLAR.AsFloat := StrToFloat(FormatFloat('0.000',0));
end;

procedure TfrmCadCusto.Calcular_MateriaPrima;
var
  vMatPrima, vMatPrimaDolar : Real;
begin
  vMatPrima      := 0;
  vMatPrimaDolar := 0;

  fDMCadCusto.cdsCusto_Mat.First;
  while not fDMCadCusto.cdsCusto_Mat.Eof do
  begin
    vMatPrima      := vMatPrima + fDMCadCusto.cdsCusto_MatVLRCUSTO.AsFloat;
    vMatPrimaDolar := vMatPrimaDolar + fDMCadCusto.cdsCusto_MatVLRCUSTODOLAR.AsFloat;

    fDMCadCusto.cdsCusto_Mat.Next;
  end;

  fDMCadCusto.cdsCustoVLRMATERIAPRIMA.AsFloat      := vMatPrima;
  fDMCadCusto.cdsCustoVLRMATERIAPRIMADOLAR.AsFloat := vMatPrimaDolar;
end;

procedure TfrmCadCusto.Monta_Resumo;
var
  vVlrCouro, vVlrOutros : Real;
begin
  fDMCadCusto.mResumo.EmptyDataSet;
  vItem      := 0;
  vVlrCouro  := 0;
  vVlrOutros := 0;
  fDMCadCusto.cdsCusto_Mat.First;
  while not fDMCadCusto.cdsCusto_Mat.Eof do
  begin
    if fDMCadCusto.cdsCusto_MatCOURO.AsString = 'S' then
      vVlrCouro := vVlrCouro + fDMCadCusto.cdsCusto_MatVLRCUSTO.AsFloat
    else
      vVlrOutros := vVlrOutros + fDMCadCusto.cdsCusto_MatVLRCUSTO.AsFloat;
    fDMCadCusto.cdsCusto_Mat.Next;
  end;
  Grava_mResumo(1,'COURO',vVlrCouro,0);

  Grava_mResumo(1,'MATERIAIS',vVlrOutros,0);

  Grava_mResumo(1,'MAO DE OBRA',fDMCadCusto.cdsCustoMAODEOBRA.AsFloat,0);

  Grava_mResumo(1,'CUSTO FIXO',fDMCadCusto.cdsCustoPERCFIXO.AsFloat,0);

  Grava_mResumo(1,'MAO DE OBRA DIRETA',fDMCadCusto.cdsCustoMAODEOBRADIRETA.AsFloat,0);


  Grava_mResumo(2,'COMISSAO',fDMCadCusto.cdsCustoPERCCOMISSAO.AsFloat,fDMCadCusto.cdsCustoPERCCOMISSAODOLAR.AsFloat);

  Grava_mResumo(2,'CUSTO FINANCEIRO',fDMCadCusto.cdsCustoPERCCUSTOFINANC.AsFloat,fDMCadCusto.cdsCustoPERCCUSTOFINANCDOLAR.AsFloat);

  Grava_mResumo(2,'FRETE',fDMCadCusto.cdsCustoPERCFRETE.AsFloat,fDMCadCusto.cdsCustoPERCFRETEDOLAR.AsFloat);

  Grava_mResumo(2,'UNICO',fDMCadCusto.cdsCustoPERCUNICO.AsFloat,fDMCadCusto.cdsCustoPERCUNICODOLAR.AsFloat);

  Grava_mResumo(2,'LUCRO',fDMCadCusto.cdsCustoPERCLUCRO.AsFloat,fDMCadCusto.cdsCustoPERCLUCRODOLAR.AsFloat);

  Grava_mResumo(2,'ICMS',fDMCadCusto.cdsCustoPERCICMS.AsFloat,fDMCadCusto.cdsCustoPERCICMSDOLAR.AsFloat);

  Grava_mResumo(2,'IMPOSTO',fDMCadCusto.cdsCustoPERCIMPOSTO.AsFloat,fDMCadCusto.cdsCustoPERCIMPOSTODOLAR.AsFloat);

  Grava_mResumo(2,'',0,0);
end;

procedure TfrmCadCusto.Grava_mResumo(Tipo: Integer; Nome: String; VlrMI,
  VlrExp: Real);
var
  vAux : Real;
begin
  if Nome <> '' then
    if (StrToFloat(FormatFloat('0.00',VlrMI)) <= 0) and (StrToFloat(FormatFloat('0.00',VlrExp)) <= 0) then
      exit;

  vItem := vItem + 1;

  fDMCadCusto.mResumo.Insert;
  fDMCadCusto.mResumoCodTipo.AsInteger := Tipo;
  fDMCadCusto.mResumoCodItem.AsInteger := vItem;
  if Tipo = 1 then
    fDMCadCusto.mResumoNomeTipo.AsString := 'RESUMO'
  else
    fDMCadCusto.mResumoNomeTipo.AsString := 'CUSTO DIRETO COM VENDAS';

  if Nome <> '' then
  begin
    fDMCadCusto.mResumoNome.AsString     := Nome;
    fDMCadCusto.mResumoVlrMI.AsFloat     := VlrMI;
    if (Tipo = 2) then
      fDMCadCusto.mResumoVlrExp.AsFloat := VlrExp
    else
    if (fDMCadCusto.cdsCustoDOLAR.AsFloat > 0) and (VlrMI > 0) then
      fDMCadCusto.mResumoVlrExp.AsFloat := VlrMI / fDMCadCusto.cdsCustoDOLAR.AsFloat;
  end;

  if vImpCalc = 'C' then
  begin
    if fDMCadCusto.mResumoCodTipo.AsInteger = 1 then
    begin
      fDMCadCusto.cdsCustoCUSTOPRODUCAO.AsFloat    := fDMCadCusto.cdsCustoCUSTOPRODUCAO.AsFloat + fDMCadCusto.mResumoVlrMI.AsFloat;
      fDMCadCusto.cdsCustoCUSTOPRODUCAOEXP.AsFloat := fDMCadCusto.cdsCustoCUSTOPRODUCAOEXP.AsFloat + fDMCadCusto.mResumoVlrExp.AsFloat;
    end
    else
    begin
      fDMCadCusto.cdsCustoCUSTODIRETOVENDAS.AsFloat    := fDMCadCusto.cdsCustoCUSTODIRETOVENDAS.AsFloat + fDMCadCusto.mResumoVlrMI.AsFloat;
      fDMCadCusto.cdsCustoCUSTODIRETOVENDASEXP.AsFloat := fDMCadCusto.cdsCustoCUSTODIRETOVENDASEXP.AsFloat + fDMCadCusto.mResumoVlrExp.AsFloat;
    end;
  end;

  fDMCadCusto.mResumo.Post;
end;

procedure TfrmCadCusto.btnImprimirClick(Sender: TObject);
begin
  if not (fDmCadCusto.cdsConsulta.Active) or (fDmCadCusto.cdsConsulta.IsEmpty) or (fDmCadCusto.cdsConsultaID.AsInteger <= 0) then
    exit;
  prc_Posiciona_Registro;

  if fDmCadCusto.cdsCusto.IsEmpty then
    exit;

  fDmCadCusto.cdsCustoImp.Close;
  fDmCadCusto.sdsCustoImp.ParamByName('ID').AsInteger := fDmCadCusto.cdsCustoID.AsInteger;
  fDmCadCusto.cdsCustoImp.Open;

  fDmCadCusto.cdsCustoImp_Mat.Close;
  fDmCadCusto.sdsCustoImp_Mat.ParamByName('ID').AsInteger := fDmCadCusto.cdsCustoID.AsInteger;
  fDmCadCusto.cdsCustoImp_Mat.Open;
  vImpCalc := 'I';

  Monta_Resumo;

  fRelCusto := TfRelCusto.Create(Self);
  fRelCusto.fDmCadCusto := fDmCadCusto;
  fRelCusto.RLReport1.Preview;
  fRelCusto.RLReport1.Free;
end;

procedure TfrmCadCusto.DBEdit11Exit(Sender: TObject);
begin
  if (trim(DBEdit11.Text) <> '') and not(DBEdit11.ReadOnly) then
  begin
    if not fDmCadCusto.fnc_Produto_Existe(0,DBEdit11.Text) then
    begin
      MessageDlg('*** Referência não encontrada ', mtInformation, [mbOk], 0);
      DBEdit11.SetFocus;
      Edit1.Text := '';
    end
    else
    begin
      fDmCadCusto.cdsCustoID_PRODUTO.AsInteger := fDmCadCusto.qProdutoID.AsInteger;
      Edit1.Text := fDmCadCusto.qProdutoNOME.AsString;
      DBEdit33.SetFocus;
    end;
  end;
end;

procedure TfrmCadCusto.prc_Abrir_TipoInd;
begin
  fDmCadCusto.cdsTipoInd.Close;
  fDmCadCusto.sdsTipoInd.ParamByName('FILIAL').AsInteger := fDmCadCusto.cdsCustoFILIAL.AsInteger;
  fDmCadCusto.cdsTipoInd.Open;
end;

procedure TfrmCadCusto.AtualizarPreodeTodos1Click(Sender: TObject);
begin
  prc_Atualizar_Preco(True);
end;

procedure TfrmCadCusto.prc_Atualizar_Preco(Todos: Boolean);
begin
  fDmCadCusto.cdsCusto_Mat.First;
  while not fDmCadCusto.cdsCusto_Mat.Eof do
  begin
    if ((not(Todos)) and (StrToFloat(FormatFloat('0.0000',fDmCadCusto.cdsCusto_MatVLRUNITARIO.AsFloat)) <= 0)) or (Todos) then
    begin
      prc_Grava_Custo_Mat(fDmCadCusto.cdsCusto_MatID_MATERIAL.AsInteger,
                          fDmCadCusto.cdsCusto_MatID_COR.AsInteger,
                          fDmCadCusto.cdsCusto_MatUNIDADE.AsString,
                          fDmCadCusto.cdsCusto_MatNOME_COR.AsString,
                          fDmCadCusto.cdsCusto_MatCONSUMO.AsFloat,
                          True);
    end;
    fDmCadCusto.cdsCusto_Mat.Next;
  end;
end;

procedure TfrmCadCusto.AtualizarSomenteosPreosZerados1Click(
  Sender: TObject);
begin
  prc_Atualizar_Preco(False);
end;

procedure TfrmCadCusto.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.0000',fDmCadCusto.cdsCusto_MatVLRUNITARIO.AsFloat)) <= 0 then
    AFont.Color := clRed;
end;

end.

