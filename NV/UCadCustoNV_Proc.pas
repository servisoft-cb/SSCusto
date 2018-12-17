unit UCadCustoNV_Proc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadCustoNV, RxLookup, StdCtrls, Mask, DBCtrls, ExtCtrls,
  NxCollection, DB, Buttons;

type
  TfrmCadCustoNV_Proc = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
  private
    { Private declarations }
    vID_ProcessoAnt : Integer;

    procedure prc_Calcular;

  public
    { Public declarations }
    fDmCadCustoNV: TDmCadCustoNV;
    
  end;

var
  frmCadCustoNV_Proc: TfrmCadCustoNV_Proc;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadCustoNV_Proc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDmCadCustoNV.cdsCustoNV_Processo.State in [dsEdit,dsInsert] then
    fDmCadCustoNV.cdsCustoNV_Processo.Cancel;
  Action := Cafree;
end;

procedure TfrmCadCustoNV_Proc.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDmCadCustoNV);
  fDmCadCustoNV.cdsProcesso.Open;
end;

procedure TfrmCadCustoNV_Proc.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if fDmCadCustoNV.cdsProcessoID.AsInteger <> fDmCadCustoNV.cdsCustoNV_ProcessoID_PROCESSO.AsInteger then
    fDmCadCustoNV.cdsProcesso.Locate('ID',fDmCadCustoNV.cdsCustoNV_ProcessoID_PROCESSO.AsInteger, ([Locaseinsensitive]));
  fDmCadCustoNV.cdsCustoNV_ProcessoNOME_PROCESSO.AsString := fDmCadCustoNV.cdsProcessoNOME.AsString;
  //if vID_ProcessoAnt <> fDmCadCustoNV.cdsCustoNV_ProcessoID_PROCESSO.AsInteger then
  //  fDmCadCustoNV.cdsCustoNV_ProcessoVLR_UNITARIO.AsFloat := 0; 
end;

procedure TfrmCadCustoNV_Proc.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadCustoNV_Proc.btnConfirmarClick(Sender: TObject);
begin
  if fDmCadCustoNV.cdsCustoNV_ProcessoID_PROCESSO.AsInteger <= 0 then
  begin
    MessageDlg('*** Processo não informado!', mtError, [mbOk], 0);
    exit;
  end;
  fDmCadCustoNV.cdsCustoNV_Processo.Post;
  Close;
end;

procedure TfrmCadCustoNV_Proc.RxDBLookupCombo1Enter(Sender: TObject);
begin
  vID_ProcessoAnt := fDmCadCustoNV.cdsCustoNV_ProcessoID_PROCESSO.AsInteger;
end;

procedure TfrmCadCustoNV_Proc.SpeedButton1Click(Sender: TObject);
begin
  fDmCadCustoNV.cdsProcesso.Close;
  fDmCadCustoNV.cdsProcesso.Open;
end;

procedure TfrmCadCustoNV_Proc.DBEdit1Exit(Sender: TObject);
begin
  prc_Calcular;
end;

procedure TfrmCadCustoNV_Proc.prc_Calcular;
begin
  if fDmCadCustoNV.cdsCustoNV_Processo.State in [dsEdit,dsInsert] then
    fDmCadCustoNV.cdsCustoNV_ProcessoVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDmCadCustoNV.cdsCustoNV_ProcessoVLR_UNITARIO.AsFloat *
                                                                                        fDmCadCustoNV.cdsCustoNV_ProcessoCONSUMO.AsFloat));
end;

procedure TfrmCadCustoNV_Proc.DBEdit2Exit(Sender: TObject);
begin
  prc_Calcular;
end;

end.
