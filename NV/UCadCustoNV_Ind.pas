unit UCadCustoNV_Ind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadCustoNV, RxLookup, StdCtrls, Mask, DBCtrls, ExtCtrls,
  NxCollection, DB, Buttons;

type
  TfrmCadCustoNV_Ind = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Opcao;
  public
    { Public declarations }
    fDmCadCustoNV: TDmCadCustoNV;
    
  end;

var
  frmCadCustoNV_Ind: TfrmCadCustoNV_Ind;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadCustoNV_Ind.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDmCadCustoNV.cdsCustoNV_Ind.State in [dsEdit,dsInsert] then
    fDmCadCustoNV.cdsCustoNV_Ind.Cancel;
  Action := Cafree;
end;

procedure TfrmCadCustoNV_Ind.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDmCadCustoNV);
  prc_Opcao;
end;

procedure TfrmCadCustoNV_Ind.prc_Opcao;
begin
  if fDmCadCustoNV.cdsCustoNV_IndTIPO_PV.AsString = 'P' then
    Label2.Caption := 'Percentual (%):'
  else
    Label2.Caption := 'Valor (R$):';
end;

procedure TfrmCadCustoNV_Ind.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if fDmCadCustoNV.cdsIndiceID.AsInteger <> fDmCadCustoNV.cdsCustoNV_IndID_INDICE.AsInteger then
    fDmCadCustoNV.cdsIndice.Locate('ID',fDmCadCustoNV.cdsCustoNV_IndID_INDICE.AsInteger, ([Locaseinsensitive]));
  fDmCadCustoNV.cdsCustoNV_IndTIPO_PV.AsString := fDmCadCustoNV.cdsIndiceTIPO_PV.AsString;
  fDmCadCustoNV.cdsCustoNV_IndVALOR_INDICE.AsFloat := fDmCadCustoNV.cdsIndiceVALOR.AsFloat;
  prc_Opcao;
end;

procedure TfrmCadCustoNV_Ind.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadCustoNV_Ind.btnConfirmarClick(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNV_IndID_INDICE.AsInteger <= 0 then
  begin
    MessageDlg('*** Indice não informado!', mtError, [mbOk], 0);
    exit;
  end;

  if fDmCadCustoNV.cdsIndiceID.AsInteger <> fDmCadCustoNV.cdsCustoNV_IndID_INDICE.AsInteger then
    fDmCadCustoNV.cdsIndice.Locate('ID',fDmCadCustoNV.cdsCustoNV_IndID_INDICE.AsInteger,([Locaseinsensitive]));
  if fDmCadCustoNV.cdsIndiceLUCRO.AsString = 'S' then
    fDmCadCustoNV.cdsCustoNVPERC_LUCRO.AsFloat := StrToFloat(FormatFloat('0.00#',fDmCadCustoNV.cdsCustoNV_IndVALOR_INDICE.AsFloat));
  fDmCadCustoNV.cdsCustoNV_Ind.Post;
  Close;
end;

procedure TfrmCadCustoNV_Ind.SpeedButton1Click(Sender: TObject);
begin
  fDmCadCustoNV.cdsIndice.Close;
  fDmCadCustoNV.cdsIndice.Open;
end;

end.
