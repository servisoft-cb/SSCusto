unit UCopiar_Mat_CombNV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadCustoNV, RxLookup, StdCtrls, NxCollection;

type
  TfrmCopiar_Mat_CombNV = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadCustoNV: TDMCadCustoNV;

  end;

var
  frmCopiar_Mat_CombNV: TfrmCopiar_Mat_CombNV;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfrmCopiar_Mat_CombNV.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCopiar_Mat_CombNV.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadCustoNV);

  fDMCadCustoNV.cdsProduto_Comb.Close;
  fDMCadCustoNV.sdsProduto_Comb.ParamByName('ID').AsInteger := fDMCadCustoNV.cdsCustoNVID_PRODUTO.AsInteger;
  fDMCadCustoNV.cdsProduto_Comb.Open;
end;

procedure TfrmCopiar_Mat_CombNV.NxButton2Click(Sender: TObject);
begin
  fDMCadCustoNV.vItem_Comb := 0;
  Close;
end;

procedure TfrmCopiar_Mat_CombNV.NxButton1Click(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Não foi informada a Combinação!', mtError, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Deseja copiar os materiais da combinação ' + fDMCadCustoNV.cdsProduto_CombNOME.AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  fDMCadCustoNV.vItem_Comb := RxDBLookupCombo1.KeyValue;
  Close;
end;

end.
