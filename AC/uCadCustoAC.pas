unit uCadCustoAC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, DBCtrls, RzButton,
  RxDBComb, RxLookup, db, Mask, Grids, DateUtils, DBGrids, SMDBGrid, Buttons, ExtCtrls, UCBase, uDmCadCustoNV, RzDBChk,
  RzPanel, ToolEdit, RXDBCtrl, RzLstBox,
  NxCollection, RzRadChk, dbXPress, SqlExpr, ComCtrls,
  RzChkLst, Menus, ComObj, CurrEdit, UCadCustoNV_Mat, UCadCustoNV_Ind, UCadCustoNV_Ate;

type
  TfrmCadCustoAC = class(TForm)
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
    RzPageControl2: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Panel5: TPanel;
    btnInserir_Mat: TNxButton;
    btnAlterar_Mat: TNxButton;
    btnExclui_Mat: TNxButton;
    btnCopiar_Mat: TNxButton;
    SMDBGrid2: TSMDBGrid;
    TabSheet2: TRzTabSheet;
    TS_Indice: TRzTabSheet;
    Panel6: TPanel;
    RzGroupBox1: TRzGroupBox;
    SMDBGrid3: TSMDBGrid;
    Panel8: TPanel;
    btnInserir_Ind: TNxButton;
    btnAlterar_Ind: TNxButton;
    btnExcluir_Ind: TNxButton;
    btnAtualizar_Ind: TNxButton;
    Panel9: TPanel;
    btnInserir_Ate: TNxButton;
    btnAlterar_Ate: TNxButton;
    btnExcluir_Ate: TNxButton;
    SMDBGrid4: TSMDBGrid;
    Label4: TLabel;
    DBDateEdit1: TDBDateEdit;
    btnCopiar_Mat_Comb: TNxButton;
    TabSheet3: TRzTabSheet;
    Panel7: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label39: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    btnCalcular: TNxButton;
    DBEdit35: TDBEdit;
    DBEdit7: TDBEdit;
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
  private
    { Private declarations }
    fDmCadCustoNV: TDmCadCustoNV;
    ffrmCadCustoNV_Mat: TfrmCadCustoNV_Mat;
    ffrmCadCustoNV_Ind: TfrmCadCustoNV_Ind;
    ffrmCadCustoNV_Ate: TfrmCadCustoNV_Ate;
    vImpCalc : String;
    vItem : Integer;
    vPercLucro : Real;

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
    procedure prc_Copiar_Consumo;
    procedure prc_Grava_Custo_Mat(ID_Material, ID_Cor : Integer ; Unidade, Nome_Cor : String ; Consumo : Real);
    procedure prc_Calcular_MateriaPrima;
    procedure prc_Calcular_Terceiro;
    procedure prc_Soma_Total_Indice;
    procedure prc_Recalcular_Ind;
    procedure prc_Gravar_Embalagem;

    procedure prc_Atualizar_Ind;

  public
    { Public declarations }
  end;

var
  frmCadCustoAC: TfrmCadCustoAC;

implementation

uses
  UMenu, DmdDatabase, rsDBUtils, uUtilPadrao, UEscolhe_Filial,
  USel_Produto, UCopiar_Mat_CombNV, StrUtils, Math, URelCusto;

{$R *.dfm}

procedure TfrmCadCustoAC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadCustoAC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDmCadCustoNV);
end;

procedure TfrmCadCustoAC.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDmCadCustoNV := TDmCadCustoNV.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDmCadCustoNV);
end;

procedure TfrmCadCustoAC.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadCustoAC.btnExcluirClick(Sender: TObject);
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

procedure TfrmCadCustoAC.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadCustoAC.btnAlterarClick(Sender: TObject);
var
  i: Integer;
begin
  if (fDmCadCustoNV.cdsCustoNV.IsEmpty) or not (fDmCadCustoNV.cdsCustoNV.Active) or (fDmCadCustoNV.cdsCustoNVID.AsInteger < 1) then
    exit;
  fDmCadCustoNV.cdsCustoNV.Edit;
  prc_Habilita;
end;

procedure TfrmCadCustoAC.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadCustoAC.btnCancelarClick(Sender: TObject);
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

procedure TfrmCadCustoAC.prc_Consultar(ID: Integer = 0);
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

procedure TfrmCadCustoAC.prc_Excluir_Registro;
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

procedure TfrmCadCustoAC.prc_Gravar_Registro;
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

procedure TfrmCadCustoAC.prc_Inserir_Registro;
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

  prc_Atualizar_Ind;
end;

procedure TfrmCadCustoAC.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not (fDmCadCustoNV.cdsCustoNV.State in [dsEdit, dsInsert]) then
      prc_Posiciona_Registro;
  end;
end;

procedure TfrmCadCustoAC.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadCustoAC.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure TfrmCadCustoAC.Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCustoAC.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not (pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadCustoAC.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
  DateEdit1.Clear;
  dateedit2.Clear;
end;

procedure TfrmCadCustoAC.prc_Posiciona_Registro;
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
end;

procedure TfrmCadCustoAC.Excel1Click(Sender: TObject);
begin
  prc_CriaExcel(SMDBGrid1.DataSource);
end;

procedure TfrmCadCustoAC.prc_CriaExcel(vDados: TDataSource);
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

procedure TfrmCadCustoAC.prc_Informar_Filial;
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

procedure TfrmCadCustoAC.prc_Habilita;
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
  btnInserir_Ind.Enabled := not(btnInserir_Ind.Enabled);
  btnAlterar_Ind.Enabled := not(btnAlterar_Ind.Enabled);
  btnExcluir_Ind.Enabled := not(btnExcluir_Ind.Enabled);
  btnAtualizar_Ind.Enabled := not(btnAtualizar_Ind.Enabled);
end;

procedure TfrmCadCustoAC.DBEdit12Exit(Sender: TObject);
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

procedure TfrmCadCustoAC.DBEdit12KeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCadCustoAC.prc_Chama_Form_Produto;
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

procedure TfrmCadCustoAC.DBEdit11KeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCadCustoAC.DBEdit11Enter(Sender: TObject);
begin
  DBEdit11.ReadOnly := (fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger > 0);
end;

procedure TfrmCadCustoAC.btnInserir_MatClick(Sender: TObject);
begin
  fDmCadCustoNV.prc_Inserir_Itens;

  ffrmCadCustoNV_Mat := TfrmCadCustoNV_Mat.Create(self);
  ffrmCadCustoNV_Mat.fDmCadCustoNV := fDmCadCustoNV;
  ffrmCadCustoNV_Mat.ShowModal;
  FreeAndNil(ffrmCadCustoNV_Mat);
end;

procedure TfrmCadCustoAC.btnAlterar_MatClick(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNV_MatITEM.AsInteger <= 0 then
    exit;
  fDmCadCustoNV.cdsCustoNV_Mat.Edit;
  ffrmCadCustoNV_Mat := TfrmCadCustoNV_Mat.Create(self);
  ffrmCadCustoNV_Mat.fDmCadCustoNV := fDmCadCustoNV;
  ffrmCadCustoNV_Mat.ShowModal;
  FreeAndNil(ffrmCadCustoNV_Mat);
end;

procedure TfrmCadCustoAC.btnExclui_MatClick(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNV_MatITEM.AsInteger <= 0 then
    exit;
  if MessageDlg('Deseja excluir o Material?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDmCadCustoNV.cdsCustoNV_Mat.Delete;
end;

procedure TfrmCadCustoAC.btnCopiar_MatClick(Sender: TObject);
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
end;

procedure TfrmCadCustoAC.prc_Copiar_Consumo;
var
  vVlrAux : Real;
  vValor, vAux : Real;
  vVlrUnitario : Real;
begin
  fDmCadCustoNV.cdsProduto_Consumo.Close;
  fDmCadCustoNV.sdsProduto_Consumo.ParamByName('ID').AsInteger := fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger;
  fDmCadCustoNV.cdsProduto_Consumo.Open;
  fDmCadCustoNV.cdsProduto_Consumo.First;
  while not fDmCadCustoNV.cdsProduto_Consumo.Eof do
  begin
    prc_Grava_Custo_Mat(fDmCadCustoNV.cdsProduto_ConsumoID_MATERIAL.AsInteger,
                        0,fDmCadCustoNV.cdsProduto_ConsumoUNIDADE.AsString,'',
                        fDmCadCustoNV.cdsProduto_ConsumoQTD_CONSUMO.AsFloat);
    fDmCadCustoNV.cdsProduto_Consumo.Next;
  end;
end;

procedure TfrmCadCustoAC.btnCopiar_Mat_CombClick(Sender: TObject);
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
                          fDmCadCustoNV.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat);
      fDmCadCustoNV.cdsProduto_Comb_Mat.Next;
    end;
  end;
  prc_Gravar_Embalagem;
end;

procedure TfrmCadCustoAC.prc_Grava_Custo_Mat(ID_Material, ID_Cor : Integer ; Unidade, Nome_Cor : String ; Consumo : Real);
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
  fDmCadCustoNV.cdsCustoNV_MatCONSUMO.AsFloat        := Consumo;
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

procedure TfrmCadCustoAC.prc_Calcular_MateriaPrima;
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

procedure TfrmCadCustoAC.DBEdit11Exit(Sender: TObject);
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

procedure TfrmCadCustoAC.prc_Atualizar_Ind;
begin
  fDmCadCustoNV.cdsCustoNV_Ind.EmptyDataSet;
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
    fDmCadCustoNV.cdsCustoNV_IndLUCRO.AsString := fDmCadCustoNV.cdsIndiceLUCRO.AsString;
    fDmCadCustoNV.cdsCustoNV_Ind.Post;
    fDmCadCustoNV.cdsIndice.Next;
  end;
end;

procedure TfrmCadCustoAC.btnInserir_IndClick(Sender: TObject);
begin
  fDmCadCustoNV.prc_Inserir_Ind;

  ffrmCadCustoNV_Ind := TfrmCadCustoNV_Ind.Create(self);
  ffrmCadCustoNV_Ind.fDmCadCustoNV := fDmCadCustoNV;
  ffrmCadCustoNV_Ind.ShowModal;
  FreeAndNil(ffrmCadCustoNV_Ind);
end;

procedure TfrmCadCustoAC.btnAlterar_IndClick(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNV_IndITEM.AsInteger <= 0 then
    exit;

  fDmCadCustoNV.cdsCustoNV_Ind.Edit;
  ffrmCadCustoNV_Ind := TfrmCadCustoNV_Ind.Create(self);
  ffrmCadCustoNV_Ind.fDmCadCustoNV := fDmCadCustoNV;
  ffrmCadCustoNV_Ind.ShowModal;
  FreeAndNil(ffrmCadCustoNV_Ind);
end;

procedure TfrmCadCustoAC.btnExcluir_IndClick(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNV_IndITEM.AsInteger <= 0 then
    exit;

  if MessageDlg('Deseja excluir o Índice selecionado?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDmCadCustoNV.cdsCustoNV_Ind.Delete;
end;

procedure TfrmCadCustoAC.btnAtualizar_IndClick(Sender: TObject);
begin
  if MessageDlg('Carregar novamente os índices?' , mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  prc_Atualizar_Ind;
end;

procedure TfrmCadCustoAC.btnCalcularClick(Sender: TObject);
var
  vVlrAux : Real;
begin
  SMDBGrid3.DisableScroll;
  prc_Calcular_MateriaPrima;
  prc_Calcular_Terceiro;
  prc_Soma_Total_Indice;
  fDmCadCustoNV.cdsCustoNVCOEFICIENTE.AsFloat := StrToFloat(FormatFloat('0.00000',(100 - fDmCadCustoNV.cdsCustoNVPERC_TOTAL_ENCARGOS.AsFloat)/100));

  vVlrAux := fDmCadCustoNV.cdsCustoNVVLR_MATERIAL.AsFloat + fDmCadCustoNV.cdsCustoNVVLR_TERCEIRO.AsFloat;
  if StrToFloat(FormatFloat('0.00',vVlrAux)) > 0 then
    vVlrAux := StrToFloat(FormatFloat('0.00',vVlrAux / fDmCadCustoNV.cdsCustoNVCOEFICIENTE.AsFloat));
  fDmCadCustoNV.cdsCustoNVPRECO_SUGERIDO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAux));
  if StrToFloat(FormatFloat('0.00',fDmCadCustoNV.cdsCustoNVPRECO_VENDA.AsFloat)) < StrToFloat(FormatFloat('0.00',fDmCadCustoNV.cdsCustoNVPRECO_SUGERIDO.AsFloat)) then
    fDmCadCustoNV.cdsCustoNVPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.00',fDmCadCustoNV.cdsCustoNVPRECO_SUGERIDO.AsFloat));
  prc_Recalcular_Ind;
  SMDBGrid3.EnableScroll;
end;

procedure TfrmCadCustoAC.prc_Calcular_Terceiro;
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

procedure TfrmCadCustoAC.prc_Soma_Total_Indice;
var
  vValor : Real;
begin
  fDmCadCustoNV.cdsCustoNV_Ind.First;
  while not fDmCadCustoNV.cdsCustoNV_Ind.Eof do
  begin
    if fDmCadCustoNV.cdsCustoNV_IndTIPO_PV.AsString = 'P' then
      vValor := vValor + fDmCadCustoNV.cdsCustoNV_IndVALOR_INDICE.AsFloat;
    fDmCadCustoNV.cdsCustoNV_Ind.Next;
  end;
  fDmCadCustoNV.cdsCustoNVPERC_TOTAL_ENCARGOS.AsFloat := StrToFloat(FormatFloat('0.00',vValor));
end;

procedure TfrmCadCustoAC.btnInserir_AteClick(Sender: TObject);
begin
  fDmCadCustoNV.prc_Inserir_Ate;

  ffrmCadCustoNV_Ate := TfrmCadCustoNV_Ate.Create(self);
  ffrmCadCustoNV_Ate.fDmCadCustoNV := fDmCadCustoNV;
  ffrmCadCustoNV_Ate.ShowModal;
  FreeAndNil(ffrmCadCustoNV_Ate);
end;

procedure TfrmCadCustoAC.prc_Recalcular_Ind;
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

procedure TfrmCadCustoAC.prc_Gravar_Embalagem;
var
  vConsumo : Real;
begin
  fDmCadCustoNV.cdsProduto_Emb.Close;
  fDmCadCustoNV.sdsProduto_Emb.ParamByName('ID').AsInteger := fDmCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger;
  fDmCadCustoNV.cdsProduto_Emb.Open;
  fDmCadCustoNV.cdsProduto_Emb.First;
  while not fDmCadCustoNV.cdsProduto_Emb.Eof do
  begin
    vConsumo := StrToFloat(FormatFloat('0.0000',fDmCadCustoNV.cdsProduto_EmbQTD_EMB.AsFloat));
    if fDmCadCustoNV.cdsProduto_EmbTIPO_EMB.AsString = 'C' then
      vConsumo := StrToFloat(FormatFloat('0.0000',1 / fDmCadCustoNV.cdsProduto_EmbQTD_EMB.AsFloat));
    prc_Grava_Custo_Mat(fDmCadCustoNV.cdsProduto_EmbID_MATERIAL.AsInteger,
                        0,'','',
                        vConsumo);
    fDmCadCustoNV.cdsProduto_Emb.Next;
  end;

end;

procedure TfrmCadCustoAC.DBEdit7Enter(Sender: TObject);
begin
  vPercLucro := StrToFloat(FormatFloat('0.000',fDmCadCustoNV.cdsCustoNVPERC_LUCRO.AsFloat));
end;

procedure TfrmCadCustoAC.DBEdit7Exit(Sender: TObject);
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

procedure TfrmCadCustoAC.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    btnCalcular.SetFocus;
end;

procedure TfrmCadCustoAC.SMDBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.000',fDmCadCustoNV.cdsCustoNV_IndVALOR_INDICE.AsFloat)) > 0 then
    AFont.Style := [fsBold];
end;

end.

