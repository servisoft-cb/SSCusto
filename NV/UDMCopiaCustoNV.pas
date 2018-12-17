unit UDMCopiaCustoNV;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMCopiaCustoNV = class(TDataModule)
    sdsCustoNV: TSQLDataSet;
    dspCustoNV: TDataSetProvider;
    cdsCustoNV: TClientDataSet;
    dsCustoNV: TDataSource;
    dsCustoNV_Mestre: TDataSource;
    sdsCustoNV_Mat: TSQLDataSet;
    cdsCustoNV_Mat: TClientDataSet;
    dsCustoNV_Mat: TDataSource;
    sdsCustoNVID: TIntegerField;
    sdsCustoNVFILIAL: TIntegerField;
    sdsCustoNVID_PRODUTO: TIntegerField;
    sdsCustoNVREFERENCIA: TStringField;
    sdsCustoNVDTCALCULO: TDateField;
    sdsCustoNVPERC_TOTAL_ENCARGOS: TFloatField;
    sdsCustoNVCOEFICIENTE: TFloatField;
    sdsCustoNVPRECO_CUSTO: TFloatField;
    sdsCustoNVVLR_MATERIAL: TFloatField;
    sdsCustoNVVLR_TERCEIRO: TFloatField;
    sdsCustoNVVLR_CUSTO_FINANCEIRO: TFloatField;
    sdsCustoNVPERC_LUCRO: TFloatField;
    sdsCustoNVPRECO_VENDA: TFloatField;
    cdsCustoNVID: TIntegerField;
    cdsCustoNVFILIAL: TIntegerField;
    cdsCustoNVID_PRODUTO: TIntegerField;
    cdsCustoNVREFERENCIA: TStringField;
    cdsCustoNVDTCALCULO: TDateField;
    cdsCustoNVPERC_TOTAL_ENCARGOS: TFloatField;
    cdsCustoNVCOEFICIENTE: TFloatField;
    cdsCustoNVPRECO_CUSTO: TFloatField;
    cdsCustoNVVLR_MATERIAL: TFloatField;
    cdsCustoNVVLR_TERCEIRO: TFloatField;
    cdsCustoNVVLR_CUSTO_FINANCEIRO: TFloatField;
    cdsCustoNVPERC_LUCRO: TFloatField;
    cdsCustoNVPRECO_VENDA: TFloatField;
    cdsCustoNVsdsCustoNV_Mat: TDataSetField;
    sdsCustoNV_Atelier: TSQLDataSet;
    cdsCustoNV_Atelier: TClientDataSet;
    dsCustoNV_Atelier: TDataSource;
    sdsCustoNV_Ind: TSQLDataSet;
    sdsCustoNV_IndID: TIntegerField;
    sdsCustoNV_IndITEM: TIntegerField;
    sdsCustoNV_IndID_INDICE: TIntegerField;
    sdsCustoNV_IndTIPO_PV: TStringField;
    sdsCustoNV_IndVALOR_INDICE: TFloatField;
    sdsCustoNV_IndVALOR_CALCULADO: TFloatField;
    cdsCustoNV_Ind: TClientDataSet;
    cdsCustoNV_IndID: TIntegerField;
    cdsCustoNV_IndITEM: TIntegerField;
    cdsCustoNV_IndID_INDICE: TIntegerField;
    cdsCustoNV_IndTIPO_PV: TStringField;
    cdsCustoNV_IndVALOR_INDICE: TFloatField;
    cdsCustoNV_IndVALOR_CALCULADO: TFloatField;
    dsCustoNV_Ind: TDataSource;
    cdsCustoNV_IndclNome_Indice: TStringField;
    sdsCustoNV_MatID: TIntegerField;
    sdsCustoNV_MatITEM: TIntegerField;
    sdsCustoNV_MatID_MATERIAL: TIntegerField;
    sdsCustoNV_MatID_COR: TIntegerField;
    sdsCustoNV_MatUNIDADE: TStringField;
    sdsCustoNV_MatCONSUMO: TFloatField;
    sdsCustoNV_MatVLR_UNITARIO: TFloatField;
    sdsCustoNV_MatPERC_ICMS: TFloatField;
    sdsCustoNV_MatPERC_IPI: TFloatField;
    sdsCustoNV_MatVLR_LIQUIDO: TFloatField;
    sdsCustoNV_MatVLR_CUSTO: TFloatField;
    sdsCustoNV_MatVLR_CUSTO_DOLAR: TFloatField;
    sdsCustoNV_MatCOURO: TStringField;
    sdsCustoNV_MatNOME_MATERIAL: TStringField;
    sdsCustoNV_MatNOME_COR: TStringField;
    cdsCustoNV_MatID: TIntegerField;
    cdsCustoNV_MatITEM: TIntegerField;
    cdsCustoNV_MatID_MATERIAL: TIntegerField;
    cdsCustoNV_MatID_COR: TIntegerField;
    cdsCustoNV_MatUNIDADE: TStringField;
    cdsCustoNV_MatCONSUMO: TFloatField;
    cdsCustoNV_MatVLR_UNITARIO: TFloatField;
    cdsCustoNV_MatPERC_ICMS: TFloatField;
    cdsCustoNV_MatPERC_IPI: TFloatField;
    cdsCustoNV_MatVLR_LIQUIDO: TFloatField;
    cdsCustoNV_MatVLR_CUSTO: TFloatField;
    cdsCustoNV_MatVLR_CUSTO_DOLAR: TFloatField;
    cdsCustoNV_MatCOURO: TStringField;
    cdsCustoNV_MatNOME_MATERIAL: TStringField;
    cdsCustoNV_MatNOME_COR: TStringField;
    sdsCustoNV_AtelierID: TIntegerField;
    sdsCustoNV_AtelierITEM: TIntegerField;
    sdsCustoNV_AtelierID_ATELIER: TIntegerField;
    sdsCustoNV_AtelierNOME_ATELIER: TStringField;
    sdsCustoNV_AtelierVALOR: TFloatField;
    cdsCustoNVsdsCustoNV_Atelier: TDataSetField;
    cdsCustoNVsdsCustoNV_Ind: TDataSetField;
    cdsCustoNV_AtelierID: TIntegerField;
    cdsCustoNV_AtelierITEM: TIntegerField;
    cdsCustoNV_AtelierID_ATELIER: TIntegerField;
    cdsCustoNV_AtelierNOME_ATELIER: TStringField;
    cdsCustoNV_AtelierVALOR: TFloatField;
    sdsCustoNV_IndPV: TStringField;
    cdsCustoNV_IndPV: TStringField;
    sdsCustoNVPRECO_SUGERIDO: TFloatField;
    cdsCustoNVPRECO_SUGERIDO: TFloatField;
    sdsCustoNV_IndLUCRO: TStringField;
    cdsCustoNV_IndLUCRO: TStringField;
    sdsCustoNV_Processo: TSQLDataSet;
    cdsCustoNV_Processo: TClientDataSet;
    dsCustoNV_Processo: TDataSource;
    sdsCustoNV_ProcessoID: TIntegerField;
    sdsCustoNV_ProcessoITEM: TIntegerField;
    sdsCustoNV_ProcessoID_PROCESSO: TIntegerField;
    sdsCustoNV_ProcessoVLR_UNITARIO: TFloatField;
    sdsCustoNV_ProcessoCONSUMO: TFloatField;
    sdsCustoNV_ProcessoVLR_TOTAL: TFloatField;
    cdsCustoNVsdsCustoNV_Processo: TDataSetField;
    cdsCustoNV_ProcessoID: TIntegerField;
    cdsCustoNV_ProcessoITEM: TIntegerField;
    cdsCustoNV_ProcessoID_PROCESSO: TIntegerField;
    cdsCustoNV_ProcessoVLR_UNITARIO: TFloatField;
    cdsCustoNV_ProcessoCONSUMO: TFloatField;
    cdsCustoNV_ProcessoVLR_TOTAL: TFloatField;
    sdsCustoNVVLR_PROCESSO: TFloatField;
    cdsCustoNVVLR_PROCESSO: TFloatField;
    sdsCustoNV_ProcessoNOME_PROCESSO: TStringField;
    cdsCustoNV_ProcessoNOME_PROCESSO: TStringField;
    sdsCustoNV_AtelierID_SETOR: TIntegerField;
    cdsCustoNV_AtelierID_SETOR: TIntegerField;
    cdsCustoNV_AtelierclNomeSetor: TStringField;
    sdsCustoNVPRAZO_DIAS: TIntegerField;
    cdsCustoNVPRAZO_DIAS: TIntegerField;
    sdsCustoNVPRAZO_DIAS_PADRAO: TIntegerField;
    cdsCustoNVPRAZO_DIAS_PADRAO: TIntegerField;
    sdsCustoNVPERC_FINANCEIRO: TFloatField;
    sdsCustoNVPERC_FINANCEIRO_PADRAO: TFloatField;
    cdsCustoNVPERC_FINANCEIRO: TFloatField;
    cdsCustoNVPERC_FINANCEIRO_PADRAO: TFloatField;
    sdsCustoNVVLR_MAOOBRA: TFloatField;
    cdsCustoNVVLR_MAOOBRA: TFloatField;
    sdsCustoNV_IndFINANCEIRO: TStringField;
    cdsCustoNV_IndFINANCEIRO: TStringField;
    sdsCustoNVID_CLIENTE: TIntegerField;
    cdsCustoNVID_CLIENTE: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
  end;

var
  DMCopiaCustoNV: TDMCopiaCustoNV;

implementation

uses DmdDatabase;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCopiaCustoNV.prc_Localizar(ID: Integer);
begin
  cdsCustoNV.Close;
  sdsCustoNV.ParamByName('ID').AsInteger := ID;
  cdsCustoNV.Open;
end;

end.

