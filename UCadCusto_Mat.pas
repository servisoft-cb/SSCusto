unit UCadCusto_Mat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, RxLookup, Buttons, ExtCtrls,
  FMTBcd, DB, SqlExpr, DBTables, DBClient, Provider, DBCtrls, RxDBComb, UDMCadCusto;

type
  TfrmCadCusto_Mat = class(TForm)
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label10: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Panel1: TPanel;
    SpeedButton7: TSpeedButton;
    BitBtn6: TBitBtn;
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
    Label9: TLabel;
    DBEdit7: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit12: TDBEdit;
    Edit1: TEdit;
    Label13: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton7Click(Sender: TObject);
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
    
    
  public
    fDmCadCusto: TDmCadCusto;
    vItemCusto : Integer;

    { Public declarations }
  end;

var
  frmCadCusto_Mat: TfrmCadCusto_Mat;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao, USel_Produto;

{$R *.dfm}

procedure TfrmCadCusto_Mat.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDmCadCusto);
end;

procedure TfrmCadCusto_Mat.BitBtn6Click(Sender: TObject);
var
  vAux : Real;
  vValor : Real;
  vVlrUnitario : Real;
  vMSGAux : String;
begin
  vMSGAux := '';
  if fDmCadCusto.cdsCusto_MatID_MATERIAL.AsInteger <= 0 then
    vMSGAux := vMSGAux + #13 + 'Você deve informar um material!';
  if fDmCadCusto.cdsCusto_MatUNIDADE.AsString = '' then
    vMSGAux := vMSGAux + #13 + 'Você deve selecionar uma unidade de medida!';
  if StrToFloat(FormatFloat('0.0000',fDMCadCusto.cdsCusto_MatCONSUMO.AsFloat)) <= 0 then
    vMSGAux := vMSGAux + #13 + 'Consumo não foi informado!';
  if StrToFloat(FormatFloat('0.000',fDMCadCusto.cdsCusto_MatVLRUNITARIO.AsFloat)) <= 0 then
    vMSGAux := vMSGAux + #13 + 'Valor unitário não informado!';

  if trim(vMSGAux) <> '' then
  begin
    MessageDlg(vMSGAux, mtError, [mbOk], 0);
    exit;
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

  if (fDMCadCusto.cdsCusto_MatCOURO.AsString <> 'N') and (fDMCadCusto.cdsCusto_MatCOURO.AsString <> 'S') then
    fDMCadCusto.cdsCusto_MatCOURO.AsString := 'N';

  fDMCadCusto.cdsCusto_MatNOME_MATERIAL.AsString := fDmCadCusto.qMaterialNOME.AsString;
  if RxDBLookupCombo2.Text <> '' then
    fDMCadCusto.cdsCusto_MatNOME_COR.AsString := RxDBLookupCombo2.Text;

  fDMCadCusto.cdsCusto_Mat.Post;
  Close;
end;

procedure TfrmCadCusto_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDmCadCusto.qMaterial.Close;
  Action := Cafree;
end;

procedure TfrmCadCusto_Mat.SpeedButton7Click(Sender: TObject);
begin
  fDMCadCusto.cdsCusto_Mat.CancelUpdates;
  Close;
end;

procedure TfrmCadCusto_Mat.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if (fDmCadCusto.qMaterialUSA_PRECO_COR.AsString = 'S') and (fDmCadCusto.cdsCorMat.Active) and (RxDBLookupCombo2.Text <> '') then
    fDMCadCusto.cdsCusto_MatVLRUNITARIO.AsFloat := fDmCadCusto.cdsCorMatPRECO_CUSTO.AsFloat;
end;

procedure TfrmCadCusto_Mat.DBEdit12Exit(Sender: TObject);
begin
  if trim(DBEdit12.Text) = '' then
    Edit1.SetFocus
  else
  begin
    fDmCadCusto.qMaterial.Close;
    fDmCadCusto.qMaterial.ParamByName('ID').AsInteger := StrToInt(DBEdit12.Text);
    fDmCadCusto.qMaterial.Open;
    if fDmCadCusto.qMaterialID.AsInteger <= 0 then
    begin
      MessageDlg('*** ID ' + DBEdit12.Text + ', não encontrado!' , mtError, [mbOk], 0);
      exit;
    end
    else
      Edit1.Text := fDmCadCusto.qMaterialNOME.AsString;
  end;
end;

procedure TfrmCadCusto_Mat.Panel2Exit(Sender: TObject);
begin
  prc_Move_Dados;
end;

procedure TfrmCadCusto_Mat.prc_Move_Dados;
begin
  if fDmCadCusto.cdsCusto_MatID_MATERIAL.AsInteger > 0 then
  begin
    fDmCadCusto.cdsCorMat.Close;
    fDmCadCusto.sdsCorMat.ParamByName('ID').AsInteger := fDmCadCusto.cdsCusto_MatID_MATERIAL.AsInteger;
    fDmCadCusto.cdsCorMat.Open;
    fDmCadCusto.cdsCusto_MatVLRUNITARIO.AsFloat := 0;

    fDmCadCusto.qMaterial.Close;
    fDmCadCusto.qMaterial.ParamByName('ID').AsInteger := fDmCadCusto.cdsCusto_MatID_MATERIAL.AsInteger;
    fDmCadCusto.qMaterial.Open;
    if fDmCadCusto.qMaterialID.AsInteger > 0 then
    begin
      fDmCadCusto.cdsCusto_MatVLRUNITARIO.AsFloat := fDmCadCusto.qMaterialPRECO_CUSTO.AsFloat;
      fDmCadCusto.cdsCusto_MatUNIDADE.AsString    := fDmCadCusto.qMaterialUNIDADE.AsString;
      if fDmCadCusto.cdsFilialSIMPLES.AsString = 'S' then
        fDmCadCusto.cdsCusto_MatPERCICMS.AsFloat := 0
      else
      begin
        fDmCadCusto.qUF.Close;
        fDmCadCusto.qUF.ParamByName('UF').AsString := fDmCadCusto.cdsFilialUF.AsString;
        fDmCadCusto.qUF.Open;
        fDmCadCusto.cdsCusto_MatPERCICMS.AsFloat := fDmCadCusto.qUFPERC_ICMS.AsFloat;
      end;
      fDmCadCusto.cdsCusto_MatPERCIPI.AsFloat := fDmCadCusto.qMaterialPERC_IPI.AsFloat;
    end;
  end;
end;

procedure TfrmCadCusto_Mat.Edit1Enter(Sender: TObject);
begin
  Edit1.ReadOnly := (fDmCadCusto.cdsCusto_MatID_MATERIAL.AsInteger > 0);
end;

procedure TfrmCadCusto_Mat.DBEdit12KeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCadCusto_Mat.prc_Chama_Form_Produto;
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
    fDmCadCusto.cdsCusto_MatID_MATERIAL.AsInteger := vCodProduto_Pos;
    if fDmCadCusto.cdsCusto_MatID_MATERIAL.AsInteger > 0 then
    begin
      if not fDmCadCusto.fnc_Material_Existe(fDmCadCusto.cdsCusto_MatID_MATERIAL.AsInteger) then
      begin
        fDmCadCusto.cdsCusto_MatID_MATERIAL.AsInteger := 0;
        Edit1.Clear;
        DBEdit12.SetFocus;
      end
      else
        Edit1.Text := fDmCadCusto.qMaterialNOME.AsString;
    end;
  end;
end;

procedure TfrmCadCusto_Mat.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((key = vk_return) and not(Edit1.ReadOnly)) or ((Key = Vk_F2) and not(Edit1.ReadOnly))  then
    prc_Chama_Form_Produto;
end;

end.

