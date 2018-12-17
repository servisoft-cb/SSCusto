unit UDMCadCustoNV;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, xmldom, Xmlxform, DBXpress, LogTypes, frxClass, frxDBSet, frxRich,
  frxExportMail, frxExportPDF, frxExportXLS;

type
  TDMCadCustoNV = class(TDataModule)
    sdsCustoNV: TSQLDataSet;
    dspCustoNV: TDataSetProvider;
    cdsCustoNV: TClientDataSet;
    dsCustoNV: TDataSource;
    dsFilial: TDataSource;
    cdsFilial: TClientDataSet;
    dspFilial: TDataSetProvider;
    sdsFilial: TSQLDataSet;
    dsCustoNV_Mestre: TDataSource;
    sdsCustoNV_Mat: TSQLDataSet;
    cdsCustoNV_Mat: TClientDataSet;
    dsCustoNV_Mat: TDataSource;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxCustoImp: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxXLSExport1: TfrxXLSExport;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    qProduto: TSQLQuery;
    qProdutoID: TIntegerField;
    qProdutoNOME: TStringField;
    qProdutoREFERENCIA: TStringField;
    sdsIndice: TSQLDataSet;
    cdsIndice: TClientDataSet;
    dspIndice: TDataSetProvider;
    sdsCorMat: TSQLDataSet;
    cdsCorMat: TClientDataSet;
    dspCorMat: TDataSetProvider;
    dsCorMat: TDataSource;
    cdsCorMatID: TIntegerField;
    cdsCorMatITEM: TIntegerField;
    cdsCorMatID_COR: TIntegerField;
    cdsCorMatNOME: TStringField;
    cdsCorMatINATIVO: TStringField;
    cdsCorMatTIPO_REG: TStringField;
    cdsCorMatPRECO_CUSTO: TFloatField;
    cdsCorMatPRECO_VENDA: TFloatField;
    cdsCorMatPERC_MARGEMLUCRO: TFloatField;
    cdsCorMatID_COR_COMBINACAO: TIntegerField;
    cdsCorMatFOTO: TStringField;
    qProdutoUNIDADE: TStringField;
    qProdutoPRECO_CUSTO: TFloatField;
    qProdutoPRECO_VENDA: TFloatField;
    qProdutoPERC_IPI: TFloatField;
    qUF: TSQLQuery;
    qUFUF: TStringField;
    qUFPERC_ICMS: TFloatField;
    cdsFilialSIMPLES: TStringField;
    cdsFilialUF: TStringField;
    qProdutoUSA_PRECO_COR: TStringField;
    cdsProduto_Consumo: TClientDataSet;
    dspProduto_Consumo: TDataSetProvider;
    sdsProduto_Consumo: TSQLDataSet;
    qMaterial: TSQLQuery;
    qMaterialID: TIntegerField;
    qMaterialNOME: TStringField;
    qMaterialREFERENCIA: TStringField;
    qMaterialUNIDADE: TStringField;
    qMaterialPRECO_CUSTO: TFloatField;
    qMaterialPRECO_VENDA: TFloatField;
    qMaterialPERC_IPI: TFloatField;
    qMaterialUSA_PRECO_COR: TStringField;
    dspProduto_Comb: TDataSetProvider;
    sdsProduto_Comb: TSQLDataSet;
    cdsProduto_Comb: TClientDataSet;
    cdsProduto_CombID: TIntegerField;
    cdsProduto_CombITEM: TIntegerField;
    cdsProduto_CombID_COR: TIntegerField;
    cdsProduto_CombNOME: TStringField;
    cdsProduto_CombINATIVO: TStringField;
    cdsProduto_CombTIPO_REG: TStringField;
    cdsProduto_CombPRECO_CUSTO: TFloatField;
    cdsProduto_CombPRECO_VENDA: TFloatField;
    cdsProduto_CombPERC_MARGEMLUCRO: TFloatField;
    cdsProduto_CombID_COR_COMBINACAO: TIntegerField;
    cdsProduto_CombFOTO: TStringField;
    dsProduto_Comb: TDataSource;
    cdsProduto_Comb_Mat: TClientDataSet;
    dspProduto_Comb_Mat: TDataSetProvider;
    sdsProduto_Comb_Mat: TSQLDataSet;
    sdsProduto_Comb_MatID: TIntegerField;
    sdsProduto_Comb_MatNOME_PRODUTO: TStringField;
    sdsProduto_Comb_MatREFERENCIA: TStringField;
    sdsProduto_Comb_MatFOTO: TStringField;
    sdsProduto_Comb_MatNCM: TStringField;
    sdsProduto_Comb_MatITEM: TIntegerField;
    sdsProduto_Comb_MatNOME_COMBINACAO: TStringField;
    sdsProduto_Comb_MatID_MATERIAL: TIntegerField;
    sdsProduto_Comb_MatMATERIAL: TStringField;
    sdsProduto_Comb_MatNOME_COR: TStringField;
    sdsProduto_Comb_MatQTD_CONSUMO: TFloatField;
    sdsProduto_Comb_MatUNIDADE: TStringField;
    sdsProduto_Comb_MatID_SETOR: TIntegerField;
    sdsProduto_Comb_MatNOME_SETOR: TStringField;
    sdsProduto_Comb_MatNOME_POSICAO: TStringField;
    sdsProduto_Comb_MatID_COR_MAT: TFMTBCDField;
    sdsProduto_Comb_MatID_POSICAO: TIntegerField;
    sdsProduto_Comb_MatID_COR_COMBINACAO: TIntegerField;
    sdsProduto_Comb_MatQTD_ESTOQUE_MIN: TFloatField;
    sdsProduto_Comb_MatTIPO_CONSUMO: TStringField;
    sdsProduto_Comb_MatITEM_CONSUMO: TIntegerField;
    sdsProduto_Comb_MatPRECO_CUSTO: TFloatField;
    sdsProduto_Comb_MatPRECO_CUSTO_TOTAL: TFloatField;
    cdsProduto_Comb_MatID: TIntegerField;
    cdsProduto_Comb_MatNOME_PRODUTO: TStringField;
    cdsProduto_Comb_MatREFERENCIA: TStringField;
    cdsProduto_Comb_MatFOTO: TStringField;
    cdsProduto_Comb_MatNCM: TStringField;
    cdsProduto_Comb_MatITEM: TIntegerField;
    cdsProduto_Comb_MatNOME_COMBINACAO: TStringField;
    cdsProduto_Comb_MatID_MATERIAL: TIntegerField;
    cdsProduto_Comb_MatMATERIAL: TStringField;
    cdsProduto_Comb_MatNOME_COR: TStringField;
    cdsProduto_Comb_MatQTD_CONSUMO: TFloatField;
    cdsProduto_Comb_MatUNIDADE: TStringField;
    cdsProduto_Comb_MatID_SETOR: TIntegerField;
    cdsProduto_Comb_MatNOME_SETOR: TStringField;
    cdsProduto_Comb_MatNOME_POSICAO: TStringField;
    cdsProduto_Comb_MatID_COR_MAT: TFMTBCDField;
    cdsProduto_Comb_MatID_POSICAO: TIntegerField;
    cdsProduto_Comb_MatID_COR_COMBINACAO: TIntegerField;
    cdsProduto_Comb_MatQTD_ESTOQUE_MIN: TFloatField;
    cdsProduto_Comb_MatTIPO_CONSUMO: TStringField;
    cdsProduto_Comb_MatITEM_CONSUMO: TIntegerField;
    cdsProduto_Comb_MatPRECO_CUSTO: TFloatField;
    cdsProduto_Comb_MatPRECO_CUSTO_TOTAL: TFloatField;
    qMaterial_Cor: TSQLQuery;
    qMaterial_CorID: TIntegerField;
    qMaterial_CorITEM: TIntegerField;
    qMaterial_CorNOME: TStringField;
    qMaterial_CorTIPO_REG: TStringField;
    qMaterial_CorPRECO_CUSTO: TFloatField;
    qMaterial_CorPRECO_VENDA: TFloatField;
    qMaterial_CorID_COR_COMBINACAO: TIntegerField;
    mResumo: TClientDataSet;
    mResumoCodTipo: TIntegerField;
    mResumoNomeTipo: TStringField;
    mResumoNome: TStringField;
    mResumoVlrMI: TFloatField;
    mResumoVlrExp: TFloatField;
    mResumoCodItem: TIntegerField;
    dsmResumo: TDataSource;
    sdsUnidade: TSQLDataSet;
    cdsUnidade: TClientDataSet;
    dspUnidade: TDataSetProvider;
    dsUnidade: TDataSource;
    cdsUnidadeUNIDADE: TStringField;
    cdsUnidadeCONVERSOR: TFloatField;
    cdsUnidadeNOME: TStringField;
    cdsUnidadeEXPORTACAO: TStringField;
    cdsUnidadeFRACIONAVEL: TStringField;
    frxCustoImp_Mat: TfrxDBDataset;
    frxmResumo: TfrxDBDataset;
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
    qIndice: TSQLQuery;
    qIndiceID: TIntegerField;
    qIndiceNOME: TStringField;
    qIndiceTIPO_PV: TStringField;
    qIndiceVALOR: TFloatField;
    qIndiceINATIVO: TStringField;
    qIndiceUSA_EMPRESA: TStringField;
    cdsCustoNV_IndclNome_Indice: TStringField;
    cdsIndiceID: TIntegerField;
    cdsIndiceNOME: TStringField;
    cdsIndiceTIPO_PV: TStringField;
    cdsIndiceVALOR: TFloatField;
    cdsIndiceINATIVO: TStringField;
    cdsIndiceUSA_EMPRESA: TStringField;
    dsIndice: TDataSource;
    sdsAtelier: TSQLDataSet;
    cdsAtelier: TClientDataSet;
    dspAtelier: TDataSetProvider;
    dsAtelier: TDataSource;
    cdsAtelierCODIGO: TIntegerField;
    cdsAtelierNOME: TStringField;
    cdsAtelierCNPJ_CPF: TStringField;
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
    cdsConsultaNOME_INTERNO_FILIAL: TStringField;
    cdsConsultaNOME_PRODUTO: TStringField;
    cdsConsultaID: TIntegerField;
    cdsConsultaFILIAL: TIntegerField;
    cdsConsultaID_PRODUTO: TIntegerField;
    cdsConsultaREFERENCIA: TStringField;
    cdsConsultaDTCALCULO: TDateField;
    cdsConsultaPERC_TOTAL_ENCARGOS: TFloatField;
    cdsConsultaCOEFICIENTE: TFloatField;
    cdsConsultaPRECO_CUSTO: TFloatField;
    cdsConsultaVLR_MATERIAL: TFloatField;
    cdsConsultaVLR_TERCEIRO: TFloatField;
    cdsConsultaVLR_CUSTO_FINANCEIRO: TFloatField;
    cdsConsultaPERC_LUCRO: TFloatField;
    cdsConsultaPRECO_VENDA: TFloatField;
    sdsCustoNV_IndPV: TStringField;
    cdsCustoNV_IndPV: TStringField;
    sdsCustoNVPRECO_SUGERIDO: TFloatField;
    cdsCustoNVPRECO_SUGERIDO: TFloatField;
    cdsProduto_Emb: TClientDataSet;
    dspProduto_Emb: TDataSetProvider;
    sdsProduto_Emb: TSQLDataSet;
    dsProduto_Emb: TDataSource;
    cdsProduto_EmbID: TIntegerField;
    cdsProduto_EmbITEM: TIntegerField;
    cdsProduto_EmbID_MATERIAL: TIntegerField;
    cdsProduto_EmbQTD_EMB: TFloatField;
    cdsProduto_EmbTIPO_EMB: TStringField;
    cdsProduto_EmbNOME: TStringField;
    cdsProduto_EmbPRECO_CUSTO: TFloatField;
    cdsIndiceLUCRO: TStringField;
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
    sdsProcesso: TSQLDataSet;
    cdsProcesso: TClientDataSet;
    dspProcesso: TDataSetProvider;
    dsProcesso: TDataSource;
    cdsProcessoID: TIntegerField;
    cdsProcessoNOME: TStringField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralUSA_CUSTO_PROC_ATE: TStringField;
    sdsCustoNV_AtelierID_SETOR: TIntegerField;
    cdsCustoNV_AtelierID_SETOR: TIntegerField;
    cdsCustoNV_AtelierclNomeSetor: TStringField;
    qSetor: TSQLQuery;
    qSetorID: TIntegerField;
    qSetorNOME: TStringField;
    sdsSetor: TSQLDataSet;
    cdsSetor: TClientDataSet;
    dspSetor: TDataSetProvider;
    dsSetor: TDataSource;
    cdsSetorID: TIntegerField;
    cdsSetorNOME: TStringField;
    cdsProduto_Ate: TClientDataSet;
    dspProduto_Ate: TDataSetProvider;
    sdsProduto_Ate: TSQLDataSet;
    dsProduto_Ate: TDataSource;
    cdsProduto_AteID: TIntegerField;
    cdsProduto_AteITEM: TIntegerField;
    cdsProduto_AteID_ATELIER: TIntegerField;
    cdsProduto_AteID_SETOR: TIntegerField;
    cdsProduto_AteVLR_PAR: TFloatField;
    cdsProduto_AteNOME_ATELIER: TStringField;
    sdsCustoNVPRAZO_DIAS: TIntegerField;
    cdsCustoNVPRAZO_DIAS: TIntegerField;
    sdsCustoNVPRAZO_DIAS_PADRAO: TIntegerField;
    cdsCustoNVPRAZO_DIAS_PADRAO: TIntegerField;
    cdsIndiceFINANCEIRO: TStringField;
    sdsCustoNVPERC_FINANCEIRO: TFloatField;
    sdsCustoNVPERC_FINANCEIRO_PADRAO: TFloatField;
    cdsCustoNVPERC_FINANCEIRO: TFloatField;
    cdsCustoNVPERC_FINANCEIRO_PADRAO: TFloatField;
    sdsCustoNVVLR_MAOOBRA: TFloatField;
    cdsCustoNVVLR_MAOOBRA: TFloatField;
    cdsIndicePRAZO_DIAS: TIntegerField;
    sdsCustoNV_IndFINANCEIRO: TStringField;
    cdsCustoNV_IndFINANCEIRO: TStringField;
    qTotalFixa: TSQLQuery;
    qTotalFixaVLR_ORC: TFloatField;
    qTotalPares: TSQLQuery;
    qTotalParesPREVISAO: TFMTBCDField;
    cdsProduto_ConsumoNOME_MATERIAL: TStringField;
    cdsProduto_ConsumoID: TIntegerField;
    cdsProduto_ConsumoITEM: TIntegerField;
    cdsProduto_ConsumoID_MATERIAL: TIntegerField;
    cdsProduto_ConsumoQTD_UNIDADE: TFloatField;
    cdsProduto_ConsumoUNIDADE: TStringField;
    cdsProduto_ConsumoID_POSICAO: TIntegerField;
    cdsProduto_ConsumoTIPO_CONSUMO: TStringField;
    cdsProduto_ConsumoIMP_ROTULO: TStringField;
    cdsProduto_ConsumoIMP_TALAO: TStringField;
    cdsProduto_ConsumoID_SETOR: TIntegerField;
    cdsProduto_ConsumoTINGIMENTO: TStringField;
    cdsProduto_ConsumoESPECIFICO: TStringField;
    cdsProduto_ConsumoQTD_CONSUMO: TFMTBCDField;
    sdsProduto_ConsumoNOME_MATERIAL: TStringField;
    sdsProduto_ConsumoID: TIntegerField;
    sdsProduto_ConsumoITEM: TIntegerField;
    sdsProduto_ConsumoID_MATERIAL: TIntegerField;
    sdsProduto_ConsumoQTD_UNIDADE: TFloatField;
    sdsProduto_ConsumoUNIDADE: TStringField;
    sdsProduto_ConsumoID_POSICAO: TIntegerField;
    sdsProduto_ConsumoTIPO_CONSUMO: TStringField;
    sdsProduto_ConsumoIMP_ROTULO: TStringField;
    sdsProduto_ConsumoIMP_TALAO: TStringField;
    sdsProduto_ConsumoID_SETOR: TIntegerField;
    sdsProduto_ConsumoTINGIMENTO: TStringField;
    sdsProduto_ConsumoESPECIFICO: TStringField;
    sdsProduto_ConsumoQTD_CONSUMO: TFMTBCDField;
    cdsProduto_Processo: TClientDataSet;
    dspProduto_Processo: TDataSetProvider;
    sdsProduto_Processo: TSQLDataSet;
    sdsProduto_ProcessoID: TIntegerField;
    sdsProduto_ProcessoITEM: TIntegerField;
    sdsProduto_ProcessoID_PROCESSO: TIntegerField;
    sdsProduto_ProcessoID_SETOR: TIntegerField;
    sdsProduto_ProcessoQTD: TFloatField;
    sdsProduto_ProcessoUN: TStringField;
    sdsProduto_ProcessoVLR_UNIT: TFloatField;
    sdsProduto_ProcessoVLR_TOTAL: TFloatField;
    sdsProduto_ProcessoOBS: TStringField;
    cdsProduto_ProcessoID: TIntegerField;
    cdsProduto_ProcessoITEM: TIntegerField;
    cdsProduto_ProcessoID_PROCESSO: TIntegerField;
    cdsProduto_ProcessoID_SETOR: TIntegerField;
    cdsProduto_ProcessoQTD: TFloatField;
    cdsProduto_ProcessoUN: TStringField;
    cdsProduto_ProcessoVLR_UNIT: TFloatField;
    cdsProduto_ProcessoVLR_TOTAL: TFloatField;
    cdsProduto_ProcessoOBS: TStringField;
    qParametros_Prod: TSQLQuery;
    qParametros_ProdID_POSICAO_PADRAO: TIntegerField;
    qParametros_Fin: TSQLQuery;
    qParametros_FinUSA_CLIENTE_CUSTO: TStringField;
    qParametros_FinINFORMA_MOBRA_MAN: TStringField;
    sdsCustoNVID_CLIENTE: TIntegerField;
    cdsCustoNVID_CLIENTE: TIntegerField;
    sdsCliente: TSQLDataSet;
    cdsCliente: TClientDataSet;
    dspCliente: TDataSetProvider;
    dsCliente: TDataSource;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteCNPJ_CPF: TStringField;
    cdsConsultaNOME_CLIENTE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspCustoNVUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsCustoNVReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsCustoNV_IndCalcFields(DataSet: TDataSet);
    procedure cdsCustoNV_MatNewRecord(DataSet: TDataSet);
    procedure cdsCustoNV_IndNewRecord(DataSet: TDataSet);
    procedure cdsCustoNV_AtelierCalcFields(DataSet: TDataSet);
    procedure cdsCustoNVNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctConsulta: String;
    vItem_Comb : Integer;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir(Tipo: String = '');
    procedure prc_Gravar;
    procedure prc_Excluir;
    function  fnc_Erro_Registro: Boolean;
    function  fnc_Produto_Existe(ID : Integer ; Referencia : String) : Boolean;
    function  fnc_Material_Existe(ID : Integer) : Boolean;

    procedure prc_Inserir_Itens;

    procedure prc_Inserir_Ind;
    procedure prc_Inserir_Ate;
    procedure prc_Inserir_Proc;

  end;

var
  DMCadCustoNV: TDMCadCustoNV;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadCustoNV.prc_Inserir(Tipo: String);
var
  vAux: Integer;
begin
  if not cdsCustoNV.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CUSTONV',0);
  if vAux = 99999 then
    prc_Inserir(Tipo);

  cdsCustoNV.Insert;
  cdsCustoNVID.AsInteger         := vAux;
  cdsCustoNVDTCALCULO.AsDateTime := Date;
end;

procedure TDMCadCustoNV.prc_Excluir;
var
  ID: TTransactionDesc;
begin
  if not(cdsCustoNV.Active) or (cdsCustoNV.IsEmpty) then
    exit;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    cdsCustoNV_Mat.First;
    while not cdsCustoNV_Mat.Eof do
      cdsCustoNV_Mat.Delete;
    cdsCustoNV_Atelier.First;
    while not cdsCustoNV_Atelier.Eof do
      cdsCustoNV_Atelier.Delete;
    cdsCustoNV_Ind.First;
    while not cdsCustoNV_Ind.Eof do
      cdsCustoNV_Ind.Delete;
    cdsCustoNV_Processo.First;
    while not cdsCustoNV_Processo.Eof do
      cdsCustoNV_Processo.Delete;
    cdsCustoNV.Delete;
    cdsCustoNV.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise;
    end
  end;
end;

procedure TDMCadCustoNV.prc_Gravar;
begin
  cdsCustoNV.Post;
  cdsCustoNV.ApplyUpdates(0);
end;

procedure TDMCadCustoNV.prc_Localizar(ID: Integer);
begin
  cdsCustoNV.Close;
  sdsCustoNV.CommandText := ctCommand;
  sdsCustoNV.ParamByName('ID').AsInteger := ID;
  cdsCustoNV.Open;
end;

procedure TDMCadCustoNV.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand     := sdsCustoNV.CommandText;
  ctConsulta    := sdsConsulta.CommandText;
  cdsFilial.Open;
  cdsIndice.Open;
  cdsUnidade.Open;
  cdsAtelier.Open;
  cdsSetor.Open;
  qParametros_Geral.Open;
  qParametros_Prod.Open;
  qParametros_Fin.Open;
  if qParametros_FinUSA_CLIENTE_CUSTO.AsString = 'S' then
    cdsCliente.Open;
  //*** Logs Implantado na versão .353
  LogProviderList.OnAdditionalValues := DoLogAdditionalValues;
  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if (Self.Components[i] is TClientDataSet) then
    begin
      SetLength(aIndices, 0);
      vIndices := TClientDataSet(Components[i]).IndexFieldNames;
      while (vIndices <> EmptyStr) do
      begin
        SetLength(aIndices, Length(aIndices) + 1);
        x := Pos(';', vIndices);
        if (x = 0) then
        begin
          aIndices[Length(aIndices) - 1] := vIndices;
          vIndices := EmptyStr;
        end
        else
        begin
          aIndices[Length(aIndices) - 1] := Copy(vIndices, 1, x - 1);
          vIndices := Copy(vIndices, x + 1, MaxInt);
        end;
      end;
      LogProviderList.AddProvider(TClientDataSet(Self.Components[i]), TClientDataSet(Self.Components[i]).Name, aIndices);
    end;
  end;
  //***********************
end;

procedure TDMCadCustoNV.dspCustoNVUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;


function TDMCadCustoNV.fnc_Erro_Registro: Boolean;
var
  vTexto: String;
begin
  Result := True;
  vMsgErro := '';
  if cdsCustoNVID_PRODUTO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Produto não informado!';

  if trim(vMsgErro) <> '' then
    exit;

  Result := False;
end;

procedure TDMCadCustoNV.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadCustoNV.cdsCustoNVReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
    Raise Exception.Create('Registro de Custo não gravado! ' + #13 + e.Message);
end;

procedure TDMCadCustoNV.prc_Inserir_Itens;
var
  vItemAux: Integer;
begin
  cdsCustoNV_Mat.Last;
  vItemAux := cdsCustoNV_MatITEM.AsInteger;
  cdsCustoNV_Mat.Insert;
  cdsCustoNV_MatID.AsInteger   := cdsCustoNVID.AsInteger;
  cdsCustoNV_MatITEM.AsInteger := vItemAux + 1;
  cdsCustoNV_MatCOURO.AsString := 'N';
end;

function TDMCadCustoNV.fnc_Produto_Existe(ID : Integer ; Referencia : String) : Boolean;
begin
  Result := False;
  qProduto.Close;
  if ID > 0 then
    qProduto.ParamByName('ID').AsInteger := ID
  else
    qProduto.ParamByName('REFERENCIA').AsString := Referencia;
  qProduto.Open;
  if qProdutoID.AsInteger > 0 then
    Result := True;
end;

function TDMCadCustoNV.fnc_Material_Existe(ID: Integer): Boolean;
begin
  Result := False;
  qMaterial.Close;
  qMaterial.ParamByName('ID').AsInteger := ID;
  qMaterial.Open;
  if qMaterialID.AsInteger > 0 then
    Result := True;
end;

procedure TDMCadCustoNV.cdsCustoNV_IndCalcFields(DataSet: TDataSet);
begin
  if cdsCustoNV_IndID_INDICE.AsInteger > 0 then
  begin
    qIndice.Close;
    qIndice.ParamByName('ID').AsInteger := cdsCustoNV_IndID_INDICE.AsInteger;
    qIndice.Open;
    cdsCustoNV_IndclNome_Indice.AsString := qIndiceNOME.AsString;
  end;
end;

procedure TDMCadCustoNV.prc_Inserir_Ind;
var
  vItem : Integer;
begin
  cdsCustoNV_Ind.Last;
  vItem := cdsCustoNV_IndITEM.AsInteger;

  cdsCustoNV_Ind.Insert;
  cdsCustoNV_IndID.AsInteger   := cdsCustoNVID.AsInteger;
  cdsCustoNV_IndITEM.AsInteger := vItem + 1;
end;

procedure TDMCadCustoNV.cdsCustoNV_MatNewRecord(DataSet: TDataSet);
begin
  cdsCustoNV_MatCOURO.AsString := 'N';
end;

procedure TDMCadCustoNV.prc_Inserir_Ate;
var
  vItem : Integer;
begin
  cdsCustoNV_Atelier.Last;
  vItem := cdsCustoNV_AtelierITEM.AsInteger;

  cdsCustoNV_Atelier.Insert;
  cdsCustoNV_AtelierID.AsInteger   := cdsCustoNVID.AsInteger;
  cdsCustoNV_AtelierITEM.AsInteger := vItem + 1;
end;

procedure TDMCadCustoNV.cdsCustoNV_IndNewRecord(DataSet: TDataSet);
begin
  cdsCustoNV_IndLUCRO.AsString      := 'N';
  cdsCustoNV_IndFINANCEIRO.AsString := 'N';
end;

procedure TDMCadCustoNV.prc_Inserir_Proc;
var
  vItem : Integer;
begin
  cdsCustoNV_Processo.Last;
  vItem := cdsCustoNV_ProcessoITEM.AsInteger;

  cdsCustoNV_Processo.Insert;
  cdsCustoNV_ProcessoID.AsInteger   := cdsCustoNVID.AsInteger;
  cdsCustoNV_ProcessoITEM.AsInteger := vItem + 1;
end;

procedure TDMCadCustoNV.cdsCustoNV_AtelierCalcFields(DataSet: TDataSet);
begin
  if cdsCustoNV_AtelierID_SETOR.AsInteger > 0 then
  begin
    qSetor.Close;
    qSetor.ParamByName('ID').AsInteger := cdsCustoNV_AtelierID_SETOR.AsInteger;
    qSetor.Open;
    cdsCustoNV_AtelierclNomeSetor.AsString := qSetorNOME.AsString;
  end;
end;

procedure TDMCadCustoNV.cdsCustoNVNewRecord(DataSet: TDataSet);
begin
  cdsCustoNVVLR_CUSTO_FINANCEIRO.AsFloat := 0;
  cdsCustoNVVLR_MAOOBRA.AsFloat          := 0;
  cdsCustoNVVLR_MATERIAL.AsFloat         := 0;
  cdsCustoNVVLR_PROCESSO.AsFloat         := 0;
  cdsCustoNVVLR_TERCEIRO.AsFloat         := 0;
end;

end.

