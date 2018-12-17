program SSCusto;

uses
  Forms,
  UMenu in 'UMenu.pas' {fMenu},
  DmdDatabase in '..\ssfacil\DmdDatabase.pas' {dmDatabase: TDataModule},
  uUtilPadrao in '..\ssfacil\uUtilPadrao.pas',
  UEscolhe_Filial in '..\ssfacil\UEscolhe_Filial.pas' {frmEscolhe_Filial},
  rsDBUtils in '..\rslib\nova\rsDBUtils.pas',
  LogProvider in '..\logs\src\LogProvider.pas',
  LogTypes in '..\logs\src\LogTypes.pas',
  uNFeComandos in '..\ssfacil\uNFeComandos.pas',
  uNFeConsts in '..\NFe 3.10\NFESrv\uNFeConsts.pas',
  USel_Produto in '..\ssfacil\USel_Produto.pas' {frmSel_Produto},
  UDMRel in '..\ssfacil\UDMRel.pas' {DMRel: TDataModule},
  SelfPrintDefs in '..\ssfacil\sendmail\SelfPrintDefs.pas',
  SendMail in '..\ssfacil\sendmail\SendMail.pas',
  SendMailOptions in '..\ssfacil\sendmail\SendMailOptions.pas' {FormSendMailOptions},
  UDMCadCusto in 'UDMCadCusto.pas' {DMCadCusto: TDataModule},
  uCadCusto in 'uCadCusto.pas' {frmCadCusto},
  UDMSel_Produto in '..\ssfacil\UDMSel_Produto.pas' {DMSel_Produto: TDataModule},
  USel_Produto_Preco in '..\ssfacil\USel_Produto_Preco.pas' {frmSel_Produto_Preco},
  USel_Produto_Lote in '..\ssfacil\PedidoLoja\USel_Produto_Lote.pas' {frmSel_Produto_Lote},
  UCadCusto_Mat in 'UCadCusto_Mat.pas' {frmCadCusto_Mat},
  UCopiar_Mat_Comb in 'UCopiar_Mat_Comb.pas' {frmCopiar_Mat_Comb},
  URelCusto in 'URelCusto.pas' {fRelCusto},
  UDMCadIndiceCusto in 'UDMCadIndiceCusto.pas' {DMCadIndiceCusto: TDataModule},
  uCadIndiceCusto in 'uCadIndiceCusto.pas' {frmCadIndiceCusto},
  UDMCadCustoNV in 'NV\UDMCadCustoNV.pas' {DMCadCustoNV: TDataModule},
  UDMCadIndice in 'NV\UDMCadIndice.pas' {DMCadIndice: TDataModule},
  uCadIndice in 'NV\uCadIndice.pas' {frmCadIndice},
  uCadCustoNV in 'NV\uCadCustoNV.pas' {frmCadCustoNV},
  UCadCustoNV_Ind in 'NV\UCadCustoNV_Ind.pas' {frmCadCustoNV_Ind},
  UCadCustoNV_Mat in 'NV\UCadCustoNV_Mat.pas' {frmCadCustoNV_Mat},
  UCadCustoNV_Ate in 'NV\UCadCustoNV_Ate.pas' {frmCadCustoNV_Ate},
  UCopiar_Mat_CombNV in 'NV\UCopiar_Mat_CombNV.pas' {frmCopiar_Mat_CombNV},
  UCadCustoNV_Proc in 'NV\UCadCustoNV_Proc.pas' {frmCadCustoNV_Proc},
  UDMCopiaCustoNV in 'NV\UDMCopiaCustoNV.pas' {DMCopiaCustoNV: TDataModule},
  USel_ContaOrc in '..\ssfacil\USel_ContaOrc.pas' {frmSel_ContaOrc};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SSCusto - Cálculo do Custo';
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TfMenu, fMenu);
  Application.Run;
end.
