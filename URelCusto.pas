unit URelCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, UDMCadCusto;

type
  TfRelCusto = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    rlDolar: TRLLabel;
    RLDraw1: TRLDraw;
    rlFilial: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel4: TRLLabel;
    rlReferencia: TRLLabel;
    RLLabel3: TRLLabel;
    rlData: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLSubDetail2: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand5: TRLBand;
    RLDBText11: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLBand6: TRLBand;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDraw4: TRLDraw;
    RLBand7: TRLBand;
    RLLabel18: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLBand8: TRLBand;
    RLDraw7: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw5: TRLDraw;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText17: TRLDBText;
    RLBand3: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLMemo1: TRLMemo;
    RLLabel14: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel29: TRLLabel;
    RLBand4: TRLBand;
    RLLabel15: TRLLabel;
    RLDraw3: TRLDraw;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLLabel30: TRLLabel;
    rlDescricao: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmCadCusto: TDmCadCusto;

  end;

var
  fRelCusto: TfRelCusto;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelCusto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelCusto.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rlDolar.Caption      := fDMCadCusto.cdsCustoDOLAR.AsString;
  rlReferencia.Caption := fDMCadCusto.cdsCustoREFERENCIA.AsString;
  rlFilial.Caption     := '';
  rlFilial.Caption := fDmCadCusto.cdsCustoImpNOME_INTERNO_FILIAL.AsString;
  rlData.Caption := fDMCadCusto.cdsCustoDTCALCULO.AsString;
  rlDescricao.Caption := fDmCadCusto.cdsCustoDESCRICAO.AsString;
end;

procedure TfRelCusto.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMCadCusto.mResumoCodTipo.AsInteger = 1 then
  begin
    RLLabel16.Caption := 'REAL';
    RLLabel16.Caption := 'DOLAR';
  end
  else
  begin
    RLLabel16.Caption := 'MI';
    RLLabel16.Caption := 'EXP';
  end;

end;

procedure TfRelCusto.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel25.Caption := FormatFloat('###,##0.000',fDMCadCusto.cdsCustoVLRTOTALREAL.AsFloat);
  RLLabel26.Caption := FormatFloat('###,##0.000',fDMCadCusto.cdsCustoVLRTOTALDOLAR.AsFloat);
  RLLabel27.Caption := FormatFloat('###,##0.000',fDMCadCusto.cdsCustoVLRTOTALEXP.AsFloat);
end;

procedure TfRelCusto.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDmCadCusto);
end;

end.
