unit UCadCustoNV_Ate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadCustoNV, RxLookup, StdCtrls, Mask, DBCtrls, ExtCtrls,
  NxCollection, DB, Buttons;

type
  TfrmCadCustoNV_Ate = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    vID_AtelierAnt : Integer;

  public
    { Public declarations }
    fDmCadCustoNV: TDmCadCustoNV;
    
  end;

var
  frmCadCustoNV_Ate: TfrmCadCustoNV_Ate;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadCustoNV_Ate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDmCadCustoNV.cdsCustoNV_Atelier.State in [dsEdit,dsInsert] then
    fDmCadCustoNV.cdsCustoNV_Atelier.CancelUpdates;
  Action := Cafree;
end;

procedure TfrmCadCustoNV_Ate.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDmCadCustoNV);
end;

procedure TfrmCadCustoNV_Ate.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if fDmCadCustoNV.cdsAtelierCODIGO.AsInteger <> fDmCadCustoNV.cdsCustoNV_AtelierID_ATELIER.AsInteger then
    fDmCadCustoNV.cdsAtelier.Locate('CODIGO',fDmCadCustoNV.cdsCustoNV_AtelierID_ATELIER.AsInteger, ([Locaseinsensitive]));
  fDmCadCustoNV.cdsCustoNV_AtelierNOME_ATELIER.AsString := fDmCadCustoNV.cdsAtelierNOME.AsString;
  if vID_AtelierAnt <> fDmCadCustoNV.cdsCustoNV_AtelierID_ATELIER.AsInteger then
    fDmCadCustoNV.cdsCustoNV_AtelierVALOR.AsFloat := 0;
end;

procedure TfrmCadCustoNV_Ate.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadCustoNV_Ate.btnConfirmarClick(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNV_AtelierID_ATELIER.AsInteger <= 0 then
  begin
    MessageDlg('*** Terceiro não informado!', mtError, [mbOk], 0);
    exit;
  end;
  if Trim(RxDBLookupCombo2.Text) <> '' then
    fDmCadCustoNV.cdsCustoNV_AtelierclNomeSetor.AsString := RxDBLookupCombo2.Text;
  fDmCadCustoNV.cdsCustoNV_Atelier.Post;
  Close;
end;

procedure TfrmCadCustoNV_Ate.RxDBLookupCombo1Enter(Sender: TObject);
begin
  vID_AtelierAnt := fDmCadCustoNV.cdsCustoNV_AtelierID_ATELIER.AsInteger;
end;

procedure TfrmCadCustoNV_Ate.SpeedButton1Click(Sender: TObject);
begin
  fDmCadCustoNV.cdsAtelier.Close;
  fDmCadCustoNV.cdsAtelier.Open;
end;

procedure TfrmCadCustoNV_Ate.SpeedButton2Click(Sender: TObject);
begin
  fDmCadCustoNV.cdsSetor.Close;
  fDmCadCustoNV.cdsSetor.Open;
end;

end.
