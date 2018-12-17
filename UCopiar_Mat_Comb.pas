unit UCopiar_Mat_Comb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadCusto, RxLookup, StdCtrls, NxCollection;

type
  TfrmCopiar_Mat_Comb = class(TForm)
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
    fDmCadCusto: TDmCadCusto;

  end;

var
  frmCopiar_Mat_Comb: TfrmCopiar_Mat_Comb;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfrmCopiar_Mat_Comb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCopiar_Mat_Comb.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDmCadCusto);

  fDmCadCusto.cdsProduto_Comb.Close;
  fDmCadCusto.sdsProduto_Comb.ParamByName('ID').AsInteger := fDmCadCusto.cdsCustoID_PRODUTO.AsInteger;
  fDmCadCusto.cdsProduto_Comb.Open;
end;

procedure TfrmCopiar_Mat_Comb.NxButton2Click(Sender: TObject);
begin
  fDmCadCusto.vItem_Comb := 0;
  Close;
end;

procedure TfrmCopiar_Mat_Comb.NxButton1Click(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Não foi informada a Combinação!', mtError, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Deseja copiar os materiais da combinação ' + fDmCadCusto.cdsProduto_CombNOME.AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  fDmCadCusto.vItem_Comb := RxDBLookupCombo1.KeyValue;
  Close;
end;

end.
