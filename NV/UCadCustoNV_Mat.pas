unit UCadCustoNV_Mat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, RxLookup, Buttons, ExtCtrls,
  FMTBcd, DB, SqlExpr, DBTables, DBClient, Provider, DBCtrls, RxDBComb, UDmCadCustoNV,
  NxCollection;

type
  TfrmCadCustoNV_Mat = class(TForm)
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label10: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Panel1: TPanel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit12: TDBEdit;
    Edit1: TEdit;
    Label13: TLabel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

    procedure prc_Move_Dados;
    procedure prc_Chama_Form_Produto;
    procedure prc_Abre_Cor;
    
    
  public
    fDmCadCustoNV: TDmCadCustoNV;
    vItemCusto : Integer;

    { Public declarations }
  end;

var
  frmCadCustoNV_Mat: TfrmCadCustoNV_Mat;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao, USel_Produto;

{$R *.dfm}

procedure TfrmCadCustoNV_Mat.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDmCadCustoNV);
  if fDmCadCustoNV.cdsCustoNV_Mat.State in [dsEdit] then
    prc_Abre_Cor;
end;

procedure TfrmCadCustoNV_Mat.btnConfirmarClick(Sender: TObject);
var
  vAux : Real;
  vValor : Real;
  vVlrUnitario : Real;
  vMSGAux : String;
begin
  vMSGAux := '';
  if fDmCadCustoNV.cdsCustoNV_MatID_MATERIAL.AsInteger <= 0 then
    vMSGAux := vMSGAux + #13 + 'Você deve informar um material!';
  if fDmCadCustoNV.cdsCustoNV_MatUNIDADE.AsString = '' then
    vMSGAux := vMSGAux + #13 + 'Você deve selecionar uma unidade de medida!';
  if StrToFloat(FormatFloat('0.0000',fDmCadCustoNV.cdsCustoNV_MatCONSUMO.AsFloat)) <= 0 then
    vMSGAux := vMSGAux + #13 + 'Consumo não foi informado!';
  if StrToFloat(FormatFloat('0.000',fDmCadCustoNV.cdsCustoNV_MatVLR_UNITARIO.AsFloat)) <= 0 then
    vMSGAux := vMSGAux + #13 + 'Valor unitário não informado!';

  if trim(vMSGAux) <> '' then
  begin
    MessageDlg(vMSGAux, mtError, [mbOk], 0);
    exit;
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
  //if StrToFloat(FormatFloat('0.000',fDmCadCustoNV.cdsCustoNVvlr.AsFloat)) > 0 then
  //  fDmCadCustoNV.cdsCustoNV_MatVLR_CUSTODOLAR.AsFloat := StrToFloat(FormatFloat('0.000',fDmCadCustoNV.cdsCustoNV_MatVLR_CUSTO.AsFloat / fDmCadCustoNV.cdsCustoDOLAR.AsFloat))
  //else
  //  fDmCadCustoNV.cdsCustoNV_MatVLR_CUSTO_DOLAR.AsFloat := 0;

  if (fDmCadCustoNV.cdsCustoNV_MatCOURO.AsString <> 'N') and (fDmCadCustoNV.cdsCustoNV_MatCOURO.AsString <> 'S') then
    fDmCadCustoNV.cdsCustoNV_MatCOURO.AsString := 'N';

  fDmCadCustoNV.cdsCustoNV_MatNOME_MATERIAL.AsString := fDmCadCustoNV.qMaterialNOME.AsString;
  if RxDBLookupCombo2.Text <> '' then
    fDmCadCustoNV.cdsCustoNV_MatNOME_COR.AsString := RxDBLookupCombo2.Text;

  fDmCadCustoNV.cdsCustoNV_Mat.Post;
  Close;
end;

procedure TfrmCadCustoNV_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDmCadCustoNV.qMaterial.Close;
  Action := Cafree;
end;

procedure TfrmCadCustoNV_Mat.btnCancelarClick(Sender: TObject);
begin
  fDmCadCustoNV.cdsCustoNV_Mat.Cancel;
  Close;
end;

procedure TfrmCadCustoNV_Mat.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if (fDmCadCustoNV.qMaterialUSA_PRECO_COR.AsString = 'S') and (fDmCadCustoNV.cdsCorMat.Active) and (RxDBLookupCombo2.Text <> '') then
    fDmCadCustoNV.cdsCustoNV_MatVLR_UNITARIO.AsFloat := fDmCadCustoNV.cdsCorMatPRECO_CUSTO.AsFloat;
end;

procedure TfrmCadCustoNV_Mat.DBEdit12Exit(Sender: TObject);
begin
  if trim(DBEdit12.Text) = '' then
    Edit1.SetFocus
  else
  begin
    fDmCadCustoNV.qMaterial.Close;
    fDmCadCustoNV.qMaterial.ParamByName('ID').AsInteger := StrToInt(DBEdit12.Text);
    fDmCadCustoNV.qMaterial.Open;
    if fDmCadCustoNV.qMaterialID.AsInteger <= 0 then
    begin
      MessageDlg('*** ID ' + DBEdit12.Text + ', não encontrado!' , mtError, [mbOk], 0);
      exit;
    end
    else
      Edit1.Text := fDmCadCustoNV.qMaterialNOME.AsString;
  end;
end;

procedure TfrmCadCustoNV_Mat.Panel2Exit(Sender: TObject);
begin
  prc_Move_Dados;
end;

procedure TfrmCadCustoNV_Mat.prc_Move_Dados;
begin
  if fDmCadCustoNV.cdsCustoNV_MatID_MATERIAL.AsInteger > 0 then
  begin
    prc_Abre_Cor;
    fDmCadCustoNV.cdsCustoNV_MatVLR_UNITARIO.AsFloat := 0;

    fDmCadCustoNV.qMaterial.Close;
    fDmCadCustoNV.qMaterial.ParamByName('ID').AsInteger := fDmCadCustoNV.cdsCustoNV_MatID_MATERIAL.AsInteger;
    fDmCadCustoNV.qMaterial.Open;
    if fDmCadCustoNV.qMaterialID.AsInteger > 0 then
    begin
      fDmCadCustoNV.cdsCustoNV_MatVLR_UNITARIO.AsFloat := fDmCadCustoNV.qMaterialPRECO_CUSTO.AsFloat;
      fDmCadCustoNV.cdsCustoNV_MatUNIDADE.AsString    := fDmCadCustoNV.qMaterialUNIDADE.AsString;
      if fDmCadCustoNV.cdsFilialSIMPLES.AsString = 'S' then
        fDmCadCustoNV.cdsCustoNV_MatPERC_ICMS.AsFloat := 0
      else
      begin
        fDmCadCustoNV.qUF.Close;
        fDmCadCustoNV.qUF.ParamByName('UF').AsString := fDmCadCustoNV.cdsFilialUF.AsString;
        fDmCadCustoNV.qUF.Open;
        fDmCadCustoNV.cdsCustoNV_MatPERC_ICMS.AsFloat := fDmCadCustoNV.qUFPERC_ICMS.AsFloat;
      end;
      fDmCadCustoNV.cdsCustoNV_MatPERC_IPI.AsFloat := fDmCadCustoNV.qMaterialPERC_IPI.AsFloat;
    end;
  end;
end;

procedure TfrmCadCustoNV_Mat.Edit1Enter(Sender: TObject);
begin
  Edit1.ReadOnly := (fDmCadCustoNV.cdsCustoNV_MatID_MATERIAL.AsInteger > 0);
end;

procedure TfrmCadCustoNV_Mat.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    if (trim(DBEdit12.Text) = '') or (StrToInt(DBEdit12.Text) <= 0) then
      Edit1.SetFocus;
  end
  else
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto;
end;

procedure TfrmCadCustoNV_Mat.prc_Chama_Form_Produto;
var
  vAux : String;
begin
  vAux := Monta_Numero(DBEdit12.Text,0);
  if trim(DBEdit12.Text) <> '' then
    vCodProduto_Pos := StrToInt(DBEdit12.Text);
  frmSel_Produto  := TfrmSel_Produto.Create(Self);
  frmSel_Produto.vVenda := True;
  frmSel_Produto.vTipo_Prod := 'M';
  frmSel_Produto.ShowModal;
  if vCodProduto_Pos > 0 then
  begin
    fDmCadCustoNV.cdsCustoNV_MatID_MATERIAL.AsInteger := vCodProduto_Pos;
    if fDmCadCustoNV.cdsCustoNV_MatID_MATERIAL.AsInteger > 0 then
    begin
      if not fDmCadCustoNV.fnc_Material_Existe(fDmCadCustoNV.cdsCustoNV_MatID_MATERIAL.AsInteger) then
      begin
        fDmCadCustoNV.cdsCustoNV_MatID_MATERIAL.AsInteger := 0;
        Edit1.Clear;
        DBEdit12.SetFocus;
      end
      else
        Edit1.Text := fDmCadCustoNV.qMaterialNOME.AsString;
    end;
  end;
end;

procedure TfrmCadCustoNV_Mat.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((key = vk_return) and not(Edit1.ReadOnly)) or ((Key = Vk_F2) and not(Edit1.ReadOnly))  then
    prc_Chama_Form_Produto;
end;

procedure TfrmCadCustoNV_Mat.prc_Abre_Cor;
begin
  fDmCadCustoNV.cdsCorMat.Close;
  fDmCadCustoNV.sdsCorMat.ParamByName('ID').AsInteger := fDmCadCustoNV.cdsCustoNV_MatID_MATERIAL.AsInteger;
  fDmCadCustoNV.cdsCorMat.Open;
end;

end.

