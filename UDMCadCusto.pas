unit UDMCadCusto;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, xmldom, Xmlxform, DBXpress, LogTypes, frxClass, frxDBSet, frxRich,
  frxExportMail, frxExportPDF, frxExportXLS;

type
  TDMCadCusto = class(TDataModule)
    sdsCusto: TSQLDataSet;
    dspCusto: TDataSetProvider;
    cdsCusto: TClientDataSet;
    dsCusto: TDataSource;
    dsFilial: TDataSource;
    cdsFilial: TClientDataSet;
    dspFilial: TDataSetProvider;
    sdsFilial: TSQLDataSet;
    dsCusto_Mestre: TDataSource;
    sdsCusto_Mat: TSQLDataSet;
    cdsCusto_Mat: TClientDataSet;
    dsCusto_Mat: TDataSource;
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
    sdsCustoID: TIntegerField;
    sdsCustoDTCALCULO: TDateField;
    sdsCustoFILIAL: TIntegerField;
    sdsCustoDOLAR: TFloatField;
    sdsCustoPERCCOMISSAO: TFloatField;
    sdsCustoPERCUNICO: TFloatField;
    sdsCustoPERCCUSTOFINANC: TFloatField;
    sdsCustoPERCLUCRO: TFloatField;
    sdsCustoPERCMATDIVERSOS: TFloatField;
    sdsCustoPERCFIXO: TFloatField;
    sdsCustoPERCFRETE: TFloatField;
    sdsCustoMAODEOBRA: TFloatField;
    sdsCustoPERCIMPOSTO: TFloatField;
    sdsCustoVLRMATERIAPRIMA: TFloatField;
    sdsCustoVLRTOTALREAL: TFloatField;
    sdsCustoVLRTOTALDOLAR: TFloatField;
    sdsCustoVLRMATERIAPRIMADOLAR: TFloatField;
    sdsCustoMAODEOBRADOLAR: TFloatField;
    sdsCustoTOTALINDICE: TFloatField;
    sdsCustoMARKUP: TFloatField;
    sdsCustoMARKUPEXP: TFloatField;
    sdsCustoVLRTOTALEXP: TFloatField;
    sdsCustoMAODEOBRADIRETA: TFloatField;
    sdsCustoPERCCOMISSAODOLAR: TFloatField;
    sdsCustoPERCCUSTOFINANCDOLAR: TFloatField;
    sdsCustoPERCFRETEDOLAR: TFloatField;
    sdsCustoPERCUNICODOLAR: TFloatField;
    sdsCustoPERCLUCRODOLAR: TFloatField;
    sdsCustoPERCICMS: TFloatField;
    sdsCustoPERCICMSDOLAR: TFloatField;
    sdsCustoPERCIMPOSTODOLAR: TFloatField;
    sdsCustoTOTALINDICEDOLAR: TFloatField;
    sdsCustoCUSTOPRODUCAO: TFloatField;
    sdsCustoCUSTODIRETOVENDAS: TFloatField;
    sdsCustoCUSTOPRODUCAOEXP: TFloatField;
    sdsCustoCUSTODIRETOVENDASEXP: TFloatField;
    sdsCustoREFERENCIA: TStringField;
    sdsCustoTIPO: TStringField;
    cdsCustoID: TIntegerField;
    cdsCustoDTCALCULO: TDateField;
    cdsCustoFILIAL: TIntegerField;
    cdsCustoDOLAR: TFloatField;
    cdsCustoPERCCOMISSAO: TFloatField;
    cdsCustoPERCUNICO: TFloatField;
    cdsCustoPERCCUSTOFINANC: TFloatField;
    cdsCustoPERCLUCRO: TFloatField;
    cdsCustoPERCMATDIVERSOS: TFloatField;
    cdsCustoPERCFIXO: TFloatField;
    cdsCustoPERCFRETE: TFloatField;
    cdsCustoMAODEOBRA: TFloatField;
    cdsCustoPERCIMPOSTO: TFloatField;
    cdsCustoVLRMATERIAPRIMA: TFloatField;
    cdsCustoVLRTOTALREAL: TFloatField;
    cdsCustoVLRTOTALDOLAR: TFloatField;
    cdsCustoVLRMATERIAPRIMADOLAR: TFloatField;
    cdsCustoMAODEOBRADOLAR: TFloatField;
    cdsCustoTOTALINDICE: TFloatField;
    cdsCustoMARKUP: TFloatField;
    cdsCustoMARKUPEXP: TFloatField;
    cdsCustoVLRTOTALEXP: TFloatField;
    cdsCustoMAODEOBRADIRETA: TFloatField;
    cdsCustoPERCCOMISSAODOLAR: TFloatField;
    cdsCustoPERCCUSTOFINANCDOLAR: TFloatField;
    cdsCustoPERCFRETEDOLAR: TFloatField;
    cdsCustoPERCUNICODOLAR: TFloatField;
    cdsCustoPERCLUCRODOLAR: TFloatField;
    cdsCustoPERCICMS: TFloatField;
    cdsCustoPERCICMSDOLAR: TFloatField;
    cdsCustoPERCIMPOSTODOLAR: TFloatField;
    cdsCustoTOTALINDICEDOLAR: TFloatField;
    cdsCustoCUSTOPRODUCAO: TFloatField;
    cdsCustoCUSTODIRETOVENDAS: TFloatField;
    cdsCustoCUSTOPRODUCAOEXP: TFloatField;
    cdsCustoCUSTODIRETOVENDASEXP: TFloatField;
    cdsCustoREFERENCIA: TStringField;
    cdsCustoTIPO: TStringField;
    sdsCustoID_PRODUTO: TIntegerField;
    cdsCustoID_PRODUTO: TIntegerField;
    sdsCusto_MatID: TIntegerField;
    sdsCusto_MatITEM: TIntegerField;
    sdsCusto_MatID_MATERIAL: TIntegerField;
    sdsCusto_MatID_COR: TIntegerField;
    sdsCusto_MatUNIDADE: TStringField;
    sdsCusto_MatCONSUMO: TFloatField;
    sdsCusto_MatVLRUNITARIO: TFloatField;
    sdsCusto_MatPERCICMS: TFloatField;
    sdsCusto_MatPERCIPI: TFloatField;
    sdsCusto_MatVLRLIQUIDO: TFloatField;
    sdsCusto_MatVLRCUSTO: TFloatField;
    sdsCusto_MatVLRCUSTODOLAR: TFloatField;
    sdsCusto_MatCOURO: TStringField;
    cdsCustosdsCusto_Mat: TDataSetField;
    cdsCusto_MatID: TIntegerField;
    cdsCusto_MatITEM: TIntegerField;
    cdsCusto_MatID_MATERIAL: TIntegerField;
    cdsCusto_MatID_COR: TIntegerField;
    cdsCusto_MatUNIDADE: TStringField;
    cdsCusto_MatCONSUMO: TFloatField;
    cdsCusto_MatVLRUNITARIO: TFloatField;
    cdsCusto_MatPERCICMS: TFloatField;
    cdsCusto_MatPERCIPI: TFloatField;
    cdsCusto_MatVLRLIQUIDO: TFloatField;
    cdsCusto_MatVLRCUSTO: TFloatField;
    cdsCusto_MatVLRCUSTODOLAR: TFloatField;
    cdsCusto_MatCOURO: TStringField;
    cdsConsultaREFERENCIA: TStringField;
    cdsConsultaNOME_PRODUTO: TStringField;
    cdsConsultaID: TIntegerField;
    cdsConsultaID_PRODUTO: TIntegerField;
    cdsConsultaDTCALCULO: TDateField;
    cdsConsultaFILIAL: TIntegerField;
    cdsConsultaDOLAR: TFloatField;
    cdsConsultaPERCCOMISSAO: TFloatField;
    cdsConsultaPERCUNICO: TFloatField;
    cdsConsultaPERCCUSTOFINANC: TFloatField;
    cdsConsultaPERCLUCRO: TFloatField;
    cdsConsultaPERCMATDIVERSOS: TFloatField;
    cdsConsultaPERCFIXO: TFloatField;
    cdsConsultaPERCFRETE: TFloatField;
    cdsConsultaMAODEOBRA: TFloatField;
    cdsConsultaPERCIMPOSTO: TFloatField;
    cdsConsultaVLRMATERIAPRIMA: TFloatField;
    cdsConsultaVLRTOTALREAL: TFloatField;
    cdsConsultaVLRTOTALDOLAR: TFloatField;
    cdsConsultaVLRMATERIAPRIMADOLAR: TFloatField;
    cdsConsultaMAODEOBRADOLAR: TFloatField;
    cdsConsultaTOTALINDICE: TFloatField;
    cdsConsultaMARKUP: TFloatField;
    cdsConsultaMARKUPEXP: TFloatField;
    cdsConsultaVLRTOTALEXP: TFloatField;
    cdsConsultaMAODEOBRADIRETA: TFloatField;
    cdsConsultaPERCCOMISSAODOLAR: TFloatField;
    cdsConsultaPERCCUSTOFINANCDOLAR: TFloatField;
    cdsConsultaPERCFRETEDOLAR: TFloatField;
    cdsConsultaPERCUNICODOLAR: TFloatField;
    cdsConsultaPERCLUCRODOLAR: TFloatField;
    cdsConsultaPERCICMS: TFloatField;
    cdsConsultaPERCICMSDOLAR: TFloatField;
    cdsConsultaPERCIMPOSTODOLAR: TFloatField;
    cdsConsultaTOTALINDICEDOLAR: TFloatField;
    cdsConsultaCUSTOPRODUCAO: TFloatField;
    cdsConsultaCUSTODIRETOVENDAS: TFloatField;
    cdsConsultaCUSTOPRODUCAOEXP: TFloatField;
    cdsConsultaCUSTODIRETOVENDASEXP: TFloatField;
    cdsConsultaREFERENCIA_1: TStringField;
    cdsConsultaTIPO: TStringField;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    qProduto: TSQLQuery;
    qProdutoID: TIntegerField;
    qProdutoNOME: TStringField;
    qProdutoREFERENCIA: TStringField;
    sdsIndiceCusto: TSQLDataSet;
    cdsIndiceCusto: TClientDataSet;
    cdsIndiceCustoFILIAL: TIntegerField;
    cdsIndiceCustoCOMISSAO: TFloatField;
    cdsIndiceCustoPERCUNICO: TFloatField;
    cdsIndiceCustoCUSTOFINANCEIRO: TFloatField;
    cdsIndiceCustoPERCLUCRO: TFloatField;
    cdsIndiceCustoMATERIALDIVERSO: TFloatField;
    cdsIndiceCustoFIXO: TFloatField;
    cdsIndiceCustoFRETE: TFloatField;
    cdsIndiceCustoMAODEOBRA: TFloatField;
    cdsIndiceCustoIMPOSTO: TFloatField;
    cdsIndiceCustoMARKUP: TFloatField;
    cdsIndiceCustoMARKUPEXP: TFloatField;
    cdsIndiceCustoMAODEOBRADIRETA: TFloatField;
    cdsIndiceCustoCOMISSAODOLAR: TFloatField;
    cdsIndiceCustoCUSTOFINANCEIRODOLAR: TFloatField;
    cdsIndiceCustoFRETEDOLAR: TFloatField;
    cdsIndiceCustoPERCUNICODOLAR: TFloatField;
    cdsIndiceCustoPERCLUCRODOLAR: TFloatField;
    cdsIndiceCustoIMPOSTODOLAR: TFloatField;
    cdsIndiceCustoPERCICMS: TFloatField;
    cdsIndiceCustoPERCICMSDOLAR: TFloatField;
    dspIndiceCusto: TDataSetProvider;
    sdsCusto_MatNOME_MATERIAL: TStringField;
    sdsCusto_MatNOME_COR: TStringField;
    cdsCusto_MatNOME_MATERIAL: TStringField;
    cdsCusto_MatNOME_COR: TStringField;
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
    cdsProduto_ConsumoID: TIntegerField;
    cdsProduto_ConsumoITEM: TIntegerField;
    cdsProduto_ConsumoID_MATERIAL: TIntegerField;
    cdsProduto_ConsumoQTD_CONSUMO: TFloatField;
    cdsProduto_ConsumoQTD_UNIDADE: TFloatField;
    cdsProduto_ConsumoUNIDADE: TStringField;
    cdsProduto_ConsumoID_POSICAO: TIntegerField;
    cdsProduto_ConsumoTIPO_CONSUMO: TStringField;
    cdsProduto_ConsumoIMP_ROTULO: TStringField;
    cdsProduto_ConsumoIMP_TALAO: TStringField;
    cdsProduto_ConsumoID_SETOR: TIntegerField;
    cdsProduto_ConsumoTINGIMENTO: TStringField;
    qMaterial: TSQLQuery;
    qMaterialID: TIntegerField;
    qMaterialNOME: TStringField;
    qMaterialREFERENCIA: TStringField;
    qMaterialUNIDADE: TStringField;
    qMaterialPRECO_CUSTO: TFloatField;
    qMaterialPRECO_VENDA: TFloatField;
    qMaterialPERC_IPI: TFloatField;
    qMaterialUSA_PRECO_COR: TStringField;
    cdsProduto_ConsumoNOME_MATERIAL: TStringField;
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
    dsCustoImp: TDataSource;
    cdsCustoImp: TClientDataSet;
    dspCustoImp: TDataSetProvider;
    sdsCustoImp: TSQLDataSet;
    cdsCustoImpNOME_INTERNO_FILIAL: TStringField;
    cdsCustoImpREFERENCIA: TStringField;
    cdsCustoImpNOME_PRODUTO: TStringField;
    cdsCustoImpID: TIntegerField;
    cdsCustoImpID_PRODUTO: TIntegerField;
    cdsCustoImpDTCALCULO: TDateField;
    cdsCustoImpFILIAL: TIntegerField;
    cdsCustoImpDOLAR: TFloatField;
    cdsCustoImpPERCCOMISSAO: TFloatField;
    cdsCustoImpPERCUNICO: TFloatField;
    cdsCustoImpPERCCUSTOFINANC: TFloatField;
    cdsCustoImpPERCLUCRO: TFloatField;
    cdsCustoImpPERCMATDIVERSOS: TFloatField;
    cdsCustoImpPERCFIXO: TFloatField;
    cdsCustoImpPERCFRETE: TFloatField;
    cdsCustoImpMAODEOBRA: TFloatField;
    cdsCustoImpPERCIMPOSTO: TFloatField;
    cdsCustoImpVLRMATERIAPRIMA: TFloatField;
    cdsCustoImpVLRTOTALREAL: TFloatField;
    cdsCustoImpVLRTOTALDOLAR: TFloatField;
    cdsCustoImpVLRMATERIAPRIMADOLAR: TFloatField;
    cdsCustoImpMAODEOBRADOLAR: TFloatField;
    cdsCustoImpTOTALINDICE: TFloatField;
    cdsCustoImpMARKUP: TFloatField;
    cdsCustoImpMARKUPEXP: TFloatField;
    cdsCustoImpVLRTOTALEXP: TFloatField;
    cdsCustoImpMAODEOBRADIRETA: TFloatField;
    cdsCustoImpPERCCOMISSAODOLAR: TFloatField;
    cdsCustoImpPERCCUSTOFINANCDOLAR: TFloatField;
    cdsCustoImpPERCFRETEDOLAR: TFloatField;
    cdsCustoImpPERCUNICODOLAR: TFloatField;
    cdsCustoImpPERCLUCRODOLAR: TFloatField;
    cdsCustoImpPERCICMS: TFloatField;
    cdsCustoImpPERCICMSDOLAR: TFloatField;
    cdsCustoImpPERCIMPOSTODOLAR: TFloatField;
    cdsCustoImpTOTALINDICEDOLAR: TFloatField;
    cdsCustoImpCUSTOPRODUCAO: TFloatField;
    cdsCustoImpCUSTODIRETOVENDAS: TFloatField;
    cdsCustoImpCUSTOPRODUCAOEXP: TFloatField;
    cdsCustoImpCUSTODIRETOVENDASEXP: TFloatField;
    cdsCustoImpREFERENCIA_1: TStringField;
    cdsCustoImpTIPO: TStringField;
    dsCustoImp_Mat: TDataSource;
    cdsCustoImp_Mat: TClientDataSet;
    dspCustoImp_Mat: TDataSetProvider;
    sdsCustoImp_Mat: TSQLDataSet;
    frxCustoImp_Mat: TfrxDBDataset;
    frxmResumo: TfrxDBDataset;
    dsTipoInd: TDataSource;
    cdsTipoInd: TClientDataSet;
    dspTipoInd: TDataSetProvider;
    sdsTipoInd: TSQLDataSet;
    cdsTipoIndTIPO: TStringField;
    sdsCustoDESCRICAO: TStringField;
    cdsCustoDESCRICAO: TStringField;
    cdsConsultaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspCustoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsCustoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
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

  end;

var
  DMCadCusto: TDMCadCusto;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadCusto.prc_Inserir(Tipo: String);
var
  vAux: Integer;
begin
  if not cdsCusto.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CUSTO',0);
  if vAux = 99999 then
    prc_Inserir(Tipo);

  cdsCusto.Insert;
  cdsCustoID.AsInteger         := vAux;
  cdsCustoDTCALCULO.AsDateTime := Date;
end;

procedure TDMCadCusto.prc_Excluir;
var
  ID: TTransactionDesc;
begin
  if not(cdsCusto.Active) or (cdsCusto.IsEmpty) then
    exit;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    cdsCusto_Mat.First;
    while not cdsCusto_Mat.Eof do
      cdsCusto_Mat.Delete;
    cdsCusto.Delete;
    cdsCusto.ApplyUpdates(0);
    dmDatabase.scoDados.Commit(ID);
  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise;
    end
  end;
end;

procedure TDMCadCusto.prc_Gravar;
begin
  cdsCusto.Post;
  cdsCusto.ApplyUpdates(0);
end;

procedure TDMCadCusto.prc_Localizar(ID: Integer);
begin
  cdsCusto.Close;
  sdsCusto.CommandText := ctCommand;
  sdsCusto.ParamByName('ID').AsInteger := ID;
  cdsCusto.Open;
end;

procedure TDMCadCusto.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand     := sdsCusto.CommandText;
  ctConsulta    := sdsConsulta.CommandText;
  cdsFilial.Open;
  cdsIndiceCusto.Open;
  cdsUnidade.Open;
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

procedure TDMCadCusto.dspCustoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;


function TDMCadCusto.fnc_Erro_Registro: Boolean;
var
  vTexto: String;
begin
  Result := True;
  vMsgErro := '';
  if cdsCustoID_PRODUTO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Produto não informado!';

  if trim(vMsgErro) <> '' then
    exit;

  Result := False;
end;

procedure TDMCadCusto.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadCusto.cdsCustoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
    Raise Exception.Create('Registro de Custo não gravado! ' + #13 + e.Message);
end;

procedure TDMCadCusto.prc_Inserir_Itens;
var
  vItemAux: Integer;
begin
  cdsCusto_Mat.Last;
  vItemAux := cdsCusto_MatITEM.AsInteger;
  cdsCusto_Mat.Insert;
  cdsCusto_MatID.AsInteger   := cdsCustoID.AsInteger;
  cdsCusto_MatITEM.AsInteger := vItemAux + 1;
  cdsCusto_MatCOURO.AsString := 'N';
end;

function TDMCadCusto.fnc_Produto_Existe(ID : Integer ; Referencia : String) : Boolean;
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

function TDMCadCusto.fnc_Material_Existe(ID: Integer): Boolean;
begin
  Result := False;
  qMaterial.Close;
  qMaterial.ParamByName('ID').AsInteger := ID;
  qMaterial.Open;
  if qMaterialID.AsInteger > 0 then
    Result := True;
end;

end.

