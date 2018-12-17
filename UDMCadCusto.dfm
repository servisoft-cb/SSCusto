object DMCadCusto: TDMCadCusto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 199
  Top = 61
  Height = 586
  Width = 983
  object sdsCusto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CUSTO'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 8
    object sdsCustoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCustoDTCALCULO: TDateField
      FieldName = 'DTCALCULO'
    end
    object sdsCustoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsCustoDOLAR: TFloatField
      FieldName = 'DOLAR'
    end
    object sdsCustoPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object sdsCustoPERCUNICO: TFloatField
      FieldName = 'PERCUNICO'
    end
    object sdsCustoPERCCUSTOFINANC: TFloatField
      FieldName = 'PERCCUSTOFINANC'
    end
    object sdsCustoPERCLUCRO: TFloatField
      FieldName = 'PERCLUCRO'
    end
    object sdsCustoPERCMATDIVERSOS: TFloatField
      FieldName = 'PERCMATDIVERSOS'
    end
    object sdsCustoPERCFIXO: TFloatField
      FieldName = 'PERCFIXO'
    end
    object sdsCustoPERCFRETE: TFloatField
      FieldName = 'PERCFRETE'
    end
    object sdsCustoMAODEOBRA: TFloatField
      FieldName = 'MAODEOBRA'
    end
    object sdsCustoPERCIMPOSTO: TFloatField
      FieldName = 'PERCIMPOSTO'
    end
    object sdsCustoVLRMATERIAPRIMA: TFloatField
      FieldName = 'VLRMATERIAPRIMA'
    end
    object sdsCustoVLRTOTALREAL: TFloatField
      FieldName = 'VLRTOTALREAL'
    end
    object sdsCustoVLRTOTALDOLAR: TFloatField
      FieldName = 'VLRTOTALDOLAR'
    end
    object sdsCustoVLRMATERIAPRIMADOLAR: TFloatField
      FieldName = 'VLRMATERIAPRIMADOLAR'
    end
    object sdsCustoMAODEOBRADOLAR: TFloatField
      FieldName = 'MAODEOBRADOLAR'
    end
    object sdsCustoTOTALINDICE: TFloatField
      FieldName = 'TOTALINDICE'
    end
    object sdsCustoMARKUP: TFloatField
      FieldName = 'MARKUP'
    end
    object sdsCustoMARKUPEXP: TFloatField
      FieldName = 'MARKUPEXP'
    end
    object sdsCustoVLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
    end
    object sdsCustoMAODEOBRADIRETA: TFloatField
      FieldName = 'MAODEOBRADIRETA'
    end
    object sdsCustoPERCCOMISSAODOLAR: TFloatField
      FieldName = 'PERCCOMISSAODOLAR'
    end
    object sdsCustoPERCCUSTOFINANCDOLAR: TFloatField
      FieldName = 'PERCCUSTOFINANCDOLAR'
    end
    object sdsCustoPERCFRETEDOLAR: TFloatField
      FieldName = 'PERCFRETEDOLAR'
    end
    object sdsCustoPERCUNICODOLAR: TFloatField
      FieldName = 'PERCUNICODOLAR'
    end
    object sdsCustoPERCLUCRODOLAR: TFloatField
      FieldName = 'PERCLUCRODOLAR'
    end
    object sdsCustoPERCICMS: TFloatField
      FieldName = 'PERCICMS'
    end
    object sdsCustoPERCICMSDOLAR: TFloatField
      FieldName = 'PERCICMSDOLAR'
    end
    object sdsCustoPERCIMPOSTODOLAR: TFloatField
      FieldName = 'PERCIMPOSTODOLAR'
    end
    object sdsCustoTOTALINDICEDOLAR: TFloatField
      FieldName = 'TOTALINDICEDOLAR'
    end
    object sdsCustoCUSTOPRODUCAO: TFloatField
      FieldName = 'CUSTOPRODUCAO'
    end
    object sdsCustoCUSTODIRETOVENDAS: TFloatField
      FieldName = 'CUSTODIRETOVENDAS'
    end
    object sdsCustoCUSTOPRODUCAOEXP: TFloatField
      FieldName = 'CUSTOPRODUCAOEXP'
    end
    object sdsCustoCUSTODIRETOVENDASEXP: TFloatField
      FieldName = 'CUSTODIRETOVENDASEXP'
    end
    object sdsCustoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsCustoTIPO: TStringField
      FieldName = 'TIPO'
    end
    object sdsCustoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object dspCusto: TDataSetProvider
    DataSet = sdsCusto
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspCustoUpdateError
    Left = 144
    Top = 8
  end
  object cdsCusto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCusto'
    OnReconcileError = cdsCustoReconcileError
    Left = 208
    Top = 8
    object cdsCustoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustoDTCALCULO: TDateField
      FieldName = 'DTCALCULO'
    end
    object cdsCustoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsCustoDOLAR: TFloatField
      FieldName = 'DOLAR'
      DisplayFormat = '0.000'
    end
    object cdsCustoPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
      DisplayFormat = '0.00'
    end
    object cdsCustoPERCUNICO: TFloatField
      FieldName = 'PERCUNICO'
      DisplayFormat = '0.00'
    end
    object cdsCustoPERCCUSTOFINANC: TFloatField
      FieldName = 'PERCCUSTOFINANC'
      DisplayFormat = '0.00'
    end
    object cdsCustoPERCLUCRO: TFloatField
      FieldName = 'PERCLUCRO'
      DisplayFormat = '0.00'
    end
    object cdsCustoPERCMATDIVERSOS: TFloatField
      FieldName = 'PERCMATDIVERSOS'
      DisplayFormat = '0.00'
    end
    object cdsCustoPERCFIXO: TFloatField
      FieldName = 'PERCFIXO'
      DisplayFormat = '0.00'
    end
    object cdsCustoPERCFRETE: TFloatField
      FieldName = 'PERCFRETE'
      DisplayFormat = '0.00'
    end
    object cdsCustoMAODEOBRA: TFloatField
      FieldName = 'MAODEOBRA'
      DisplayFormat = '0.000'
    end
    object cdsCustoPERCIMPOSTO: TFloatField
      FieldName = 'PERCIMPOSTO'
      DisplayFormat = '0.00'
    end
    object cdsCustoVLRMATERIAPRIMA: TFloatField
      FieldName = 'VLRMATERIAPRIMA'
      DisplayFormat = '0.000'
    end
    object cdsCustoVLRTOTALREAL: TFloatField
      FieldName = 'VLRTOTALREAL'
      DisplayFormat = '0.000'
    end
    object cdsCustoVLRTOTALDOLAR: TFloatField
      FieldName = 'VLRTOTALDOLAR'
      DisplayFormat = '0.000'
    end
    object cdsCustoVLRMATERIAPRIMADOLAR: TFloatField
      FieldName = 'VLRMATERIAPRIMADOLAR'
      DisplayFormat = '0.000'
    end
    object cdsCustoMAODEOBRADOLAR: TFloatField
      FieldName = 'MAODEOBRADOLAR'
      DisplayFormat = '0.000'
    end
    object cdsCustoTOTALINDICE: TFloatField
      FieldName = 'TOTALINDICE'
      DisplayFormat = '0.000'
    end
    object cdsCustoMARKUP: TFloatField
      FieldName = 'MARKUP'
      DisplayFormat = '0.0000'
    end
    object cdsCustoMARKUPEXP: TFloatField
      FieldName = 'MARKUPEXP'
      DisplayFormat = '0.0000'
    end
    object cdsCustoVLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
      DisplayFormat = '0.000'
    end
    object cdsCustoMAODEOBRADIRETA: TFloatField
      FieldName = 'MAODEOBRADIRETA'
      DisplayFormat = '0.000'
    end
    object cdsCustoPERCCOMISSAODOLAR: TFloatField
      FieldName = 'PERCCOMISSAODOLAR'
      DisplayFormat = '0.00'
    end
    object cdsCustoPERCCUSTOFINANCDOLAR: TFloatField
      FieldName = 'PERCCUSTOFINANCDOLAR'
      DisplayFormat = '0.00'
    end
    object cdsCustoPERCFRETEDOLAR: TFloatField
      FieldName = 'PERCFRETEDOLAR'
      DisplayFormat = '0.00'
    end
    object cdsCustoPERCUNICODOLAR: TFloatField
      FieldName = 'PERCUNICODOLAR'
      DisplayFormat = '0.00'
    end
    object cdsCustoPERCLUCRODOLAR: TFloatField
      FieldName = 'PERCLUCRODOLAR'
      DisplayFormat = '0.00'
    end
    object cdsCustoPERCICMS: TFloatField
      FieldName = 'PERCICMS'
      DisplayFormat = '0.00'
    end
    object cdsCustoPERCICMSDOLAR: TFloatField
      FieldName = 'PERCICMSDOLAR'
      DisplayFormat = '0.00'
    end
    object cdsCustoPERCIMPOSTODOLAR: TFloatField
      FieldName = 'PERCIMPOSTODOLAR'
      DisplayFormat = '0.00'
    end
    object cdsCustoTOTALINDICEDOLAR: TFloatField
      FieldName = 'TOTALINDICEDOLAR'
      DisplayFormat = '0.000'
    end
    object cdsCustoCUSTOPRODUCAO: TFloatField
      FieldName = 'CUSTOPRODUCAO'
      DisplayFormat = '0.000'
    end
    object cdsCustoCUSTODIRETOVENDAS: TFloatField
      FieldName = 'CUSTODIRETOVENDAS'
      DisplayFormat = '0.000'
    end
    object cdsCustoCUSTOPRODUCAOEXP: TFloatField
      FieldName = 'CUSTOPRODUCAOEXP'
      DisplayFormat = '0.000'
    end
    object cdsCustoCUSTODIRETOVENDASEXP: TFloatField
      FieldName = 'CUSTODIRETOVENDASEXP'
      DisplayFormat = '0.000'
    end
    object cdsCustoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsCustoTIPO: TStringField
      FieldName = 'TIPO'
    end
    object cdsCustoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsCustosdsCusto_Mat: TDataSetField
      FieldName = 'sdsCusto_Mat'
    end
    object cdsCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object dsCusto: TDataSource
    DataSet = cdsCusto
    Left = 280
    Top = 8
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 784
    Top = 183
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 744
    Top = 183
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 704
    Top = 183
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT FIL.* '#13#10'FROM FILIAL FIL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 672
    Top = 183
  end
  object dsCusto_Mestre: TDataSource
    DataSet = sdsCusto
    Left = 32
    Top = 48
  end
  object sdsCusto_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.*, M.NOME NOME_MATERIAL, COMB.NOME NOME_COR'#13#10'FROM CUSTO' +
      '_MAT C'#13#10'LEFT JOIN PRODUTO M'#13#10'ON C.ID_MATERIAL = M.ID'#13#10'LEFT JOIN ' +
      'COMBINACAO COMB'#13#10'ON C.ID_COR = COMB.ID'#13#10'WHERE C.ID = :ID'#13#10
    DataSource = dsCusto_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 88
    object sdsCusto_MatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCusto_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCusto_MatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object sdsCusto_MatID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsCusto_MatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsCusto_MatCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object sdsCusto_MatVLRUNITARIO: TFloatField
      FieldName = 'VLRUNITARIO'
    end
    object sdsCusto_MatPERCICMS: TFloatField
      FieldName = 'PERCICMS'
    end
    object sdsCusto_MatPERCIPI: TFloatField
      FieldName = 'PERCIPI'
    end
    object sdsCusto_MatVLRLIQUIDO: TFloatField
      FieldName = 'VLRLIQUIDO'
    end
    object sdsCusto_MatVLRCUSTO: TFloatField
      FieldName = 'VLRCUSTO'
    end
    object sdsCusto_MatVLRCUSTODOLAR: TFloatField
      FieldName = 'VLRCUSTODOLAR'
    end
    object sdsCusto_MatCOURO: TStringField
      FieldName = 'COURO'
      FixedChar = True
      Size = 1
    end
    object sdsCusto_MatNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      ProviderFlags = []
      Size = 100
    end
    object sdsCusto_MatNOME_COR: TStringField
      FieldName = 'NOME_COR'
      ProviderFlags = []
      Size = 60
    end
  end
  object cdsCusto_Mat: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCustosdsCusto_Mat
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 168
    Top = 88
    object cdsCusto_MatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCusto_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCusto_MatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsCusto_MatID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsCusto_MatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsCusto_MatCONSUMO: TFloatField
      FieldName = 'CONSUMO'
      DisplayFormat = '0.0000'
    end
    object cdsCusto_MatVLRUNITARIO: TFloatField
      FieldName = 'VLRUNITARIO'
      DisplayFormat = '0.000'
    end
    object cdsCusto_MatPERCICMS: TFloatField
      FieldName = 'PERCICMS'
      DisplayFormat = '0.00'
    end
    object cdsCusto_MatPERCIPI: TFloatField
      FieldName = 'PERCIPI'
      DisplayFormat = '0.00'
    end
    object cdsCusto_MatVLRLIQUIDO: TFloatField
      FieldName = 'VLRLIQUIDO'
      DisplayFormat = '0.000'
    end
    object cdsCusto_MatVLRCUSTO: TFloatField
      FieldName = 'VLRCUSTO'
      DisplayFormat = '0.000'
    end
    object cdsCusto_MatVLRCUSTODOLAR: TFloatField
      FieldName = 'VLRCUSTODOLAR'
      DisplayFormat = '0.000'
    end
    object cdsCusto_MatCOURO: TStringField
      FieldName = 'COURO'
      FixedChar = True
      Size = 1
    end
    object cdsCusto_MatNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      ProviderFlags = []
      Size = 100
    end
    object cdsCusto_MatNOME_COR: TStringField
      FieldName = 'NOME_COR'
      ProviderFlags = []
      Size = 60
    end
  end
  object dsCusto_Mat: TDataSource
    DataSet = cdsCusto_Mat
    Left = 248
    Top = 88
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT F.NOME_INTERNO NOME_INTERNO_FILIAL, P.REFERENCIA, P.nome ' +
      'NOME_PRODUTO, C.*'#13#10'FROM CUSTO C'#13#10'INNER JOIN PRODUTO P'#13#10'ON C.ID_P' +
      'RODUTO = P.ID'#13#10'INNER JOIN FILIAL F'#13#10'ON C.FILIAL = F.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 512
    Top = 8
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    UpdateMode = upWhereChanged
    OnUpdateError = dspCustoUpdateError
    Left = 544
    Top = 8
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 576
    Top = 8
    object cdsConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsultaNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsultaDTCALCULO: TDateField
      FieldName = 'DTCALCULO'
    end
    object cdsConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsultaDOLAR: TFloatField
      FieldName = 'DOLAR'
    end
    object cdsConsultaPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object cdsConsultaPERCUNICO: TFloatField
      FieldName = 'PERCUNICO'
    end
    object cdsConsultaPERCCUSTOFINANC: TFloatField
      FieldName = 'PERCCUSTOFINANC'
    end
    object cdsConsultaPERCLUCRO: TFloatField
      FieldName = 'PERCLUCRO'
    end
    object cdsConsultaPERCMATDIVERSOS: TFloatField
      FieldName = 'PERCMATDIVERSOS'
    end
    object cdsConsultaPERCFIXO: TFloatField
      FieldName = 'PERCFIXO'
    end
    object cdsConsultaPERCFRETE: TFloatField
      FieldName = 'PERCFRETE'
    end
    object cdsConsultaMAODEOBRA: TFloatField
      FieldName = 'MAODEOBRA'
    end
    object cdsConsultaPERCIMPOSTO: TFloatField
      FieldName = 'PERCIMPOSTO'
    end
    object cdsConsultaVLRMATERIAPRIMA: TFloatField
      FieldName = 'VLRMATERIAPRIMA'
    end
    object cdsConsultaVLRTOTALREAL: TFloatField
      FieldName = 'VLRTOTALREAL'
    end
    object cdsConsultaVLRTOTALDOLAR: TFloatField
      FieldName = 'VLRTOTALDOLAR'
    end
    object cdsConsultaVLRMATERIAPRIMADOLAR: TFloatField
      FieldName = 'VLRMATERIAPRIMADOLAR'
    end
    object cdsConsultaMAODEOBRADOLAR: TFloatField
      FieldName = 'MAODEOBRADOLAR'
    end
    object cdsConsultaTOTALINDICE: TFloatField
      FieldName = 'TOTALINDICE'
    end
    object cdsConsultaMARKUP: TFloatField
      FieldName = 'MARKUP'
    end
    object cdsConsultaMARKUPEXP: TFloatField
      FieldName = 'MARKUPEXP'
    end
    object cdsConsultaVLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
    end
    object cdsConsultaMAODEOBRADIRETA: TFloatField
      FieldName = 'MAODEOBRADIRETA'
    end
    object cdsConsultaPERCCOMISSAODOLAR: TFloatField
      FieldName = 'PERCCOMISSAODOLAR'
    end
    object cdsConsultaPERCCUSTOFINANCDOLAR: TFloatField
      FieldName = 'PERCCUSTOFINANCDOLAR'
    end
    object cdsConsultaPERCFRETEDOLAR: TFloatField
      FieldName = 'PERCFRETEDOLAR'
    end
    object cdsConsultaPERCUNICODOLAR: TFloatField
      FieldName = 'PERCUNICODOLAR'
    end
    object cdsConsultaPERCLUCRODOLAR: TFloatField
      FieldName = 'PERCLUCRODOLAR'
    end
    object cdsConsultaPERCICMS: TFloatField
      FieldName = 'PERCICMS'
    end
    object cdsConsultaPERCICMSDOLAR: TFloatField
      FieldName = 'PERCICMSDOLAR'
    end
    object cdsConsultaPERCIMPOSTODOLAR: TFloatField
      FieldName = 'PERCIMPOSTODOLAR'
    end
    object cdsConsultaTOTALINDICEDOLAR: TFloatField
      FieldName = 'TOTALINDICEDOLAR'
    end
    object cdsConsultaCUSTOPRODUCAO: TFloatField
      FieldName = 'CUSTOPRODUCAO'
    end
    object cdsConsultaCUSTODIRETOVENDAS: TFloatField
      FieldName = 'CUSTODIRETOVENDAS'
    end
    object cdsConsultaCUSTOPRODUCAOEXP: TFloatField
      FieldName = 'CUSTOPRODUCAOEXP'
    end
    object cdsConsultaCUSTODIRETOVENDASEXP: TFloatField
      FieldName = 'CUSTODIRETOVENDASEXP'
    end
    object cdsConsultaREFERENCIA_1: TStringField
      FieldName = 'REFERENCIA_1'
    end
    object cdsConsultaTIPO: TStringField
      FieldName = 'TIPO'
    end
    object cdsConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 608
    Top = 8
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 600
    Top = 312
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = SMTP
    MAPISendFlag = 0
    Left = 632
    Top = 312
  end
  object frxRichObject1: TfrxRichObject
    Left = 664
    Top = 312
  end
  object frxCustoImp: TfrxDBDataset
    UserName = 'frxCustoImp'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOME_INTERNO_FILIAL=NOME_INTERNO_FILIAL'
      'REFERENCIA=REFERENCIA'
      'NOME_PRODUTO=NOME_PRODUTO'
      'ID=ID'
      'ID_PRODUTO=ID_PRODUTO'
      'DTCALCULO=DTCALCULO'
      'FILIAL=FILIAL'
      'DOLAR=DOLAR'
      'PERCCOMISSAO=PERCCOMISSAO'
      'PERCUNICO=PERCUNICO'
      'PERCCUSTOFINANC=PERCCUSTOFINANC'
      'PERCLUCRO=PERCLUCRO'
      'PERCMATDIVERSOS=PERCMATDIVERSOS'
      'PERCFIXO=PERCFIXO'
      'PERCFRETE=PERCFRETE'
      'MAODEOBRA=MAODEOBRA'
      'PERCIMPOSTO=PERCIMPOSTO'
      'VLRMATERIAPRIMA=VLRMATERIAPRIMA'
      'VLRTOTALREAL=VLRTOTALREAL'
      'VLRTOTALDOLAR=VLRTOTALDOLAR'
      'VLRMATERIAPRIMADOLAR=VLRMATERIAPRIMADOLAR'
      'MAODEOBRADOLAR=MAODEOBRADOLAR'
      'TOTALINDICE=TOTALINDICE'
      'MARKUP=MARKUP'
      'MARKUPEXP=MARKUPEXP'
      'VLRTOTALEXP=VLRTOTALEXP'
      'MAODEOBRADIRETA=MAODEOBRADIRETA'
      'PERCCOMISSAODOLAR=PERCCOMISSAODOLAR'
      'PERCCUSTOFINANCDOLAR=PERCCUSTOFINANCDOLAR'
      'PERCFRETEDOLAR=PERCFRETEDOLAR'
      'PERCUNICODOLAR=PERCUNICODOLAR'
      'PERCLUCRODOLAR=PERCLUCRODOLAR'
      'PERCICMS=PERCICMS'
      'PERCICMSDOLAR=PERCICMSDOLAR'
      'PERCIMPOSTODOLAR=PERCIMPOSTODOLAR'
      'TOTALINDICEDOLAR=TOTALINDICEDOLAR'
      'CUSTOPRODUCAO=CUSTOPRODUCAO'
      'CUSTODIRETOVENDAS=CUSTODIRETOVENDAS'
      'CUSTOPRODUCAOEXP=CUSTOPRODUCAOEXP'
      'CUSTODIRETOVENDASEXP=CUSTODIRETOVENDASEXP'
      'REFERENCIA_1=REFERENCIA_1'
      'TIPO=TIPO')
    DataSource = dsCustoImp
    BCDToCurrency = False
    Left = 568
    Top = 360
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43066.473055532400000000
    ReportOptions.LastChange = 43066.674739907410000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 568
    Top = 312
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 688
    Top = 312
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'REFERENCIA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT ID, NOME, REFERENCIA, UNIDADE, PRECO_CUSTO, PRECO_VENDA, ' +
        'PERC_IPI, USA_PRECO_COR'
      'FROM PRODUTO'
      'WHERE ID = :ID'
      '  OR REFERENCIA = :REFERENCIA')
    SQLConnection = dmDatabase.scoDados
    Left = 856
    Top = 272
    object qProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object qProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object qProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object qProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object qProdutoUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
  end
  object sdsIndiceCusto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM INDICECUSTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 80
  end
  object cdsIndiceCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspIndiceCusto'
    Left = 560
    Top = 80
    object cdsIndiceCustoFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object cdsIndiceCustoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object cdsIndiceCustoPERCUNICO: TFloatField
      FieldName = 'PERCUNICO'
    end
    object cdsIndiceCustoCUSTOFINANCEIRO: TFloatField
      FieldName = 'CUSTOFINANCEIRO'
    end
    object cdsIndiceCustoPERCLUCRO: TFloatField
      FieldName = 'PERCLUCRO'
    end
    object cdsIndiceCustoMATERIALDIVERSO: TFloatField
      FieldName = 'MATERIALDIVERSO'
    end
    object cdsIndiceCustoFIXO: TFloatField
      FieldName = 'FIXO'
    end
    object cdsIndiceCustoFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object cdsIndiceCustoMAODEOBRA: TFloatField
      FieldName = 'MAODEOBRA'
    end
    object cdsIndiceCustoIMPOSTO: TFloatField
      FieldName = 'IMPOSTO'
    end
    object cdsIndiceCustoMARKUP: TFloatField
      FieldName = 'MARKUP'
    end
    object cdsIndiceCustoMARKUPEXP: TFloatField
      FieldName = 'MARKUPEXP'
    end
    object cdsIndiceCustoMAODEOBRADIRETA: TFloatField
      FieldName = 'MAODEOBRADIRETA'
    end
    object cdsIndiceCustoCOMISSAODOLAR: TFloatField
      FieldName = 'COMISSAODOLAR'
    end
    object cdsIndiceCustoCUSTOFINANCEIRODOLAR: TFloatField
      FieldName = 'CUSTOFINANCEIRODOLAR'
    end
    object cdsIndiceCustoFRETEDOLAR: TFloatField
      FieldName = 'FRETEDOLAR'
    end
    object cdsIndiceCustoPERCUNICODOLAR: TFloatField
      FieldName = 'PERCUNICODOLAR'
    end
    object cdsIndiceCustoPERCLUCRODOLAR: TFloatField
      FieldName = 'PERCLUCRODOLAR'
    end
    object cdsIndiceCustoIMPOSTODOLAR: TFloatField
      FieldName = 'IMPOSTODOLAR'
    end
    object cdsIndiceCustoPERCICMS: TFloatField
      FieldName = 'PERCICMS'
    end
    object cdsIndiceCustoPERCICMSDOLAR: TFloatField
      FieldName = 'PERCICMSDOLAR'
    end
  end
  object dspIndiceCusto: TDataSetProvider
    DataSet = sdsIndiceCusto
    Left = 528
    Top = 80
  end
  object sdsCorMat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PC.*'#13#10'FROM PRODUTO_COMB PC'#13#10'WHERE PC.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 160
  end
  object cdsCorMat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCorMat'
    Left = 552
    Top = 160
    object cdsCorMatID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCorMatITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCorMatID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsCorMatNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCorMatINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsCorMatTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsCorMatPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsCorMatPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsCorMatPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsCorMatID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object cdsCorMatFOTO: TStringField
      FieldName = 'FOTO'
      Size = 200
    end
  end
  object dspCorMat: TDataSetProvider
    DataSet = sdsCorMat
    Left = 520
    Top = 160
  end
  object dsCorMat: TDataSource
    DataSet = cdsCorMat
    Left = 584
    Top = 160
  end
  object qUF: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM UF'
      'WHERE UF = :UF')
    SQLConnection = dmDatabase.scoDados
    Left = 584
    Top = 232
    object qUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object qUFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
  end
  object cdsProduto_Consumo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Consumo'
    Left = 176
    Top = 319
    object cdsProduto_ConsumoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_ConsumoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProduto_ConsumoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsProduto_ConsumoQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsProduto_ConsumoQTD_UNIDADE: TFloatField
      FieldName = 'QTD_UNIDADE'
    end
    object cdsProduto_ConsumoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProduto_ConsumoID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object cdsProduto_ConsumoTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsumoIMP_ROTULO: TStringField
      FieldName = 'IMP_ROTULO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsumoIMP_TALAO: TStringField
      FieldName = 'IMP_TALAO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsumoID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsProduto_ConsumoTINGIMENTO: TStringField
      FieldName = 'TINGIMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsumoNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      Size = 100
    end
  end
  object dspProduto_Consumo: TDataSetProvider
    DataSet = sdsProduto_Consumo
    Left = 136
    Top = 319
  end
  object sdsProduto_Consumo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT MAT.NOME NOME_MATERIAL, PC.*'#13#10'FROM PRODUTO_CONSUMO PC'#13#10'IN' +
      'NER JOIN PRODUTO MAT'#13#10'ON PC.ID_MATERIAL = MAT.ID'#13#10'WHERE PC.ID = ' +
      ':ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 319
  end
  object qMaterial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT ID, NOME, REFERENCIA, UNIDADE, PRECO_CUSTO, PRECO_VENDA, ' +
        'PERC_IPI, USA_PRECO_COR'
      'FROM PRODUTO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 856
    Top = 344
    object qMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qMaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qMaterialUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object qMaterialPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object qMaterialPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object qMaterialPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object qMaterialUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
  end
  object cdsProduto_Comb: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;NOME'
    Params = <>
    ProviderName = 'dspProduto_Comb'
    Left = 176
    Top = 367
    object cdsProduto_CombID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_CombITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProduto_CombID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsProduto_CombNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsProduto_CombINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_CombTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_CombPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProduto_CombPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsProduto_CombPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsProduto_CombID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object cdsProduto_CombFOTO: TStringField
      FieldName = 'FOTO'
      Size = 200
    end
  end
  object dspProduto_Comb: TDataSetProvider
    DataSet = sdsProduto_Comb
    Left = 136
    Top = 367
  end
  object sdsProduto_Comb: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PC.*'#13#10'FROM PRODUTO_COMB PC'#13#10'WHERE PC.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 367
  end
  object dsProduto_Comb: TDataSource
    DataSet = cdsProduto_Comb
    Left = 216
    Top = 368
  end
  object cdsProduto_Comb_Mat: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;NOME_COMBINACAO'
    Params = <>
    ProviderName = 'dspProduto_Comb_Mat'
    Left = 176
    Top = 423
    object cdsProduto_Comb_MatID: TIntegerField
      FieldName = 'ID'
    end
    object cdsProduto_Comb_MatNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsProduto_Comb_MatREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProduto_Comb_MatFOTO: TStringField
      FieldName = 'FOTO'
      Size = 200
    end
    object cdsProduto_Comb_MatNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsProduto_Comb_MatITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsProduto_Comb_MatNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 50
    end
    object cdsProduto_Comb_MatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsProduto_Comb_MatMATERIAL: TStringField
      FieldName = 'MATERIAL'
      Size = 100
    end
    object cdsProduto_Comb_MatNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsProduto_Comb_MatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsProduto_Comb_MatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProduto_Comb_MatID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsProduto_Comb_MatNOME_SETOR: TStringField
      FieldName = 'NOME_SETOR'
    end
    object cdsProduto_Comb_MatNOME_POSICAO: TStringField
      FieldName = 'NOME_POSICAO'
      Size = 30
    end
    object cdsProduto_Comb_MatID_COR_MAT: TFMTBCDField
      FieldName = 'ID_COR_MAT'
      Precision = 15
      Size = 0
    end
    object cdsProduto_Comb_MatID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object cdsProduto_Comb_MatID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object cdsProduto_Comb_MatQTD_ESTOQUE_MIN: TFloatField
      FieldName = 'QTD_ESTOQUE_MIN'
    end
    object cdsProduto_Comb_MatTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Comb_MatITEM_CONSUMO: TIntegerField
      FieldName = 'ITEM_CONSUMO'
    end
    object cdsProduto_Comb_MatPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProduto_Comb_MatPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
  end
  object dspProduto_Comb_Mat: TDataSetProvider
    DataSet = sdsProduto_Comb_Mat
    Left = 136
    Top = 423
  end
  object sdsProduto_Comb_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT V.*'#13#10'FROM vficha_tecnica2 V'#13#10'WHERE V.ID = :ID'#13#10'  AND V.IT' +
      'EM = :ITEM'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 423
    object sdsProduto_Comb_MatID: TIntegerField
      FieldName = 'ID'
    end
    object sdsProduto_Comb_MatNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object sdsProduto_Comb_MatREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProduto_Comb_MatFOTO: TStringField
      FieldName = 'FOTO'
      Size = 200
    end
    object sdsProduto_Comb_MatNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object sdsProduto_Comb_MatITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object sdsProduto_Comb_MatNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 50
    end
    object sdsProduto_Comb_MatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object sdsProduto_Comb_MatMATERIAL: TStringField
      FieldName = 'MATERIAL'
      Size = 100
    end
    object sdsProduto_Comb_MatNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object sdsProduto_Comb_MatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object sdsProduto_Comb_MatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsProduto_Comb_MatID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object sdsProduto_Comb_MatNOME_SETOR: TStringField
      FieldName = 'NOME_SETOR'
    end
    object sdsProduto_Comb_MatNOME_POSICAO: TStringField
      FieldName = 'NOME_POSICAO'
      Size = 30
    end
    object sdsProduto_Comb_MatID_COR_MAT: TFMTBCDField
      FieldName = 'ID_COR_MAT'
      Precision = 15
      Size = 0
    end
    object sdsProduto_Comb_MatID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object sdsProduto_Comb_MatID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object sdsProduto_Comb_MatQTD_ESTOQUE_MIN: TFloatField
      FieldName = 'QTD_ESTOQUE_MIN'
    end
    object sdsProduto_Comb_MatTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Comb_MatITEM_CONSUMO: TIntegerField
      FieldName = 'ITEM_CONSUMO'
    end
    object sdsProduto_Comb_MatPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProduto_Comb_MatPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
  end
  object qMaterial_Cor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COR_COMBINACAO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT C.*'
      'FROM PRODUTO_COMB C'
      'WHERE C.ID = :ID'
      '  AND C.ID_COR_COMBINACAO = :ID_COR_COMBINACAO')
    SQLConnection = dmDatabase.scoDados
    Left = 864
    Top = 432
    object qMaterial_CorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qMaterial_CorITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qMaterial_CorNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qMaterial_CorTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object qMaterial_CorPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object qMaterial_CorPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object qMaterial_CorID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
  end
  object mResumo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodTipo'
        DataType = ftInteger
      end
      item
        Name = 'NomeTipo'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VlrMI'
        DataType = ftFloat
      end
      item
        Name = 'VlrExp'
        DataType = ftFloat
      end
      item
        Name = 'CodItem'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'CodTipo;CodItem'
    Params = <>
    StoreDefs = True
    Left = 512
    Top = 432
    Data = {
      8D0000009619E0BD0100000018000000060000000000030000008D0007436F64
      5469706F0400010000000000084E6F6D655469706F0100490000000100055749
      445448020002002800044E6F6D65010049000000010005574944544802000200
      280005566C724D49080004000000000006566C72457870080004000000000007
      436F644974656D04000100000000000000}
    object mResumoCodTipo: TIntegerField
      FieldName = 'CodTipo'
    end
    object mResumoNomeTipo: TStringField
      FieldName = 'NomeTipo'
      Size = 40
    end
    object mResumoNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object mResumoVlrMI: TFloatField
      FieldName = 'VlrMI'
      DisplayFormat = '0.000'
    end
    object mResumoVlrExp: TFloatField
      FieldName = 'VlrExp'
      DisplayFormat = '0.000'
    end
    object mResumoCodItem: TIntegerField
      FieldName = 'CodItem'
    end
  end
  object dsmResumo: TDataSource
    DataSet = mResumo
    Left = 536
    Top = 428
  end
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UNIDADE'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 744
    Top = 48
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UNIDADE'
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 808
    Top = 48
    object cdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object cdsUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object cdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsUnidadeEXPORTACAO: TStringField
      FieldName = 'EXPORTACAO'
      FixedChar = True
      Size = 1
    end
    object cdsUnidadeFRACIONAVEL: TStringField
      FieldName = 'FRACIONAVEL'
      FixedChar = True
      Size = 1
    end
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    Left = 776
    Top = 48
  end
  object dsUnidade: TDataSource
    DataSet = cdsUnidade
    Left = 840
    Top = 48
  end
  object dsCustoImp: TDataSource
    DataSet = cdsCustoImp
    Left = 488
    Top = 223
  end
  object cdsCustoImp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCustoImp'
    Left = 448
    Top = 223
    object cdsCustoImpNOME_INTERNO_FILIAL: TStringField
      FieldName = 'NOME_INTERNO_FILIAL'
      Size = 30
    end
    object cdsCustoImpREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsCustoImpNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsCustoImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCustoImpID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsCustoImpDTCALCULO: TDateField
      FieldName = 'DTCALCULO'
    end
    object cdsCustoImpFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsCustoImpDOLAR: TFloatField
      FieldName = 'DOLAR'
    end
    object cdsCustoImpPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object cdsCustoImpPERCUNICO: TFloatField
      FieldName = 'PERCUNICO'
    end
    object cdsCustoImpPERCCUSTOFINANC: TFloatField
      FieldName = 'PERCCUSTOFINANC'
    end
    object cdsCustoImpPERCLUCRO: TFloatField
      FieldName = 'PERCLUCRO'
    end
    object cdsCustoImpPERCMATDIVERSOS: TFloatField
      FieldName = 'PERCMATDIVERSOS'
    end
    object cdsCustoImpPERCFIXO: TFloatField
      FieldName = 'PERCFIXO'
    end
    object cdsCustoImpPERCFRETE: TFloatField
      FieldName = 'PERCFRETE'
    end
    object cdsCustoImpMAODEOBRA: TFloatField
      FieldName = 'MAODEOBRA'
    end
    object cdsCustoImpPERCIMPOSTO: TFloatField
      FieldName = 'PERCIMPOSTO'
    end
    object cdsCustoImpVLRMATERIAPRIMA: TFloatField
      FieldName = 'VLRMATERIAPRIMA'
    end
    object cdsCustoImpVLRTOTALREAL: TFloatField
      FieldName = 'VLRTOTALREAL'
    end
    object cdsCustoImpVLRTOTALDOLAR: TFloatField
      FieldName = 'VLRTOTALDOLAR'
    end
    object cdsCustoImpVLRMATERIAPRIMADOLAR: TFloatField
      FieldName = 'VLRMATERIAPRIMADOLAR'
    end
    object cdsCustoImpMAODEOBRADOLAR: TFloatField
      FieldName = 'MAODEOBRADOLAR'
    end
    object cdsCustoImpTOTALINDICE: TFloatField
      FieldName = 'TOTALINDICE'
    end
    object cdsCustoImpMARKUP: TFloatField
      FieldName = 'MARKUP'
    end
    object cdsCustoImpMARKUPEXP: TFloatField
      FieldName = 'MARKUPEXP'
    end
    object cdsCustoImpVLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
    end
    object cdsCustoImpMAODEOBRADIRETA: TFloatField
      FieldName = 'MAODEOBRADIRETA'
    end
    object cdsCustoImpPERCCOMISSAODOLAR: TFloatField
      FieldName = 'PERCCOMISSAODOLAR'
    end
    object cdsCustoImpPERCCUSTOFINANCDOLAR: TFloatField
      FieldName = 'PERCCUSTOFINANCDOLAR'
    end
    object cdsCustoImpPERCFRETEDOLAR: TFloatField
      FieldName = 'PERCFRETEDOLAR'
    end
    object cdsCustoImpPERCUNICODOLAR: TFloatField
      FieldName = 'PERCUNICODOLAR'
    end
    object cdsCustoImpPERCLUCRODOLAR: TFloatField
      FieldName = 'PERCLUCRODOLAR'
    end
    object cdsCustoImpPERCICMS: TFloatField
      FieldName = 'PERCICMS'
    end
    object cdsCustoImpPERCICMSDOLAR: TFloatField
      FieldName = 'PERCICMSDOLAR'
    end
    object cdsCustoImpPERCIMPOSTODOLAR: TFloatField
      FieldName = 'PERCIMPOSTODOLAR'
    end
    object cdsCustoImpTOTALINDICEDOLAR: TFloatField
      FieldName = 'TOTALINDICEDOLAR'
    end
    object cdsCustoImpCUSTOPRODUCAO: TFloatField
      FieldName = 'CUSTOPRODUCAO'
    end
    object cdsCustoImpCUSTODIRETOVENDAS: TFloatField
      FieldName = 'CUSTODIRETOVENDAS'
    end
    object cdsCustoImpCUSTOPRODUCAOEXP: TFloatField
      FieldName = 'CUSTOPRODUCAOEXP'
    end
    object cdsCustoImpCUSTODIRETOVENDASEXP: TFloatField
      FieldName = 'CUSTODIRETOVENDASEXP'
    end
    object cdsCustoImpREFERENCIA_1: TStringField
      FieldName = 'REFERENCIA_1'
    end
    object cdsCustoImpTIPO: TStringField
      FieldName = 'TIPO'
    end
  end
  object dspCustoImp: TDataSetProvider
    DataSet = sdsCustoImp
    Left = 408
    Top = 223
  end
  object sdsCustoImp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT F.NOME_INTERNO NOME_INTERNO_FILIAL, P.REFERENCIA, P.nome ' +
      'NOME_PRODUTO, C.*'#13#10'FROM CUSTO C'#13#10'INNER JOIN PRODUTO P'#13#10'ON C.ID_P' +
      'RODUTO = P.ID'#13#10'INNER JOIN FILIAL F'#13#10'ON C.FILIAL = F.ID'#13#10'WHERE C.' +
      'ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 223
  end
  object dsCustoImp_Mat: TDataSource
    DataSet = cdsCustoImp_Mat
    Left = 488
    Top = 271
  end
  object cdsCustoImp_Mat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCustoImp_Mat'
    Left = 448
    Top = 271
  end
  object dspCustoImp_Mat: TDataSetProvider
    DataSet = sdsCustoImp_Mat
    Left = 408
    Top = 271
  end
  object sdsCustoImp_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CM.*, MAT.NOME NOME_MATERIAL, COMB.NOME NOME_COR'#13#10'FROM CU' +
      'STO_MAT CM'#13#10'INNER JOIN PRODUTO MAT'#13#10'ON CM.ID_MATERIAL = MAT.ID'#13#10 +
      'LEFT JOIN COMBINACAO COMB'#13#10'ON CM.ID_COR = COMB.ID'#13#10'WHERE CM.ID =' +
      ' :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 271
  end
  object frxCustoImp_Mat: TfrxDBDataset
    UserName = 'frxCustoImp_Mat'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ID_MATERIAL=ID_MATERIAL'
      'ID_COR=ID_COR'
      'UNIDADE=UNIDADE'
      'CONSUMO=CONSUMO'
      'VLRUNITARIO=VLRUNITARIO'
      'PERCICMS=PERCICMS'
      'PERCIPI=PERCIPI'
      'VLRLIQUIDO=VLRLIQUIDO'
      'VLRCUSTO=VLRCUSTO'
      'VLRCUSTODOLAR=VLRCUSTODOLAR'
      'COURO=COURO'
      'NOME_MATERIAL=NOME_MATERIAL'
      'NOME_COR=NOME_COR')
    DataSource = dsCustoImp_Mat
    BCDToCurrency = False
    Left = 608
    Top = 360
  end
  object frxmResumo: TfrxDBDataset
    UserName = 'frxmResumo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CodTipo=CodTipo'
      'NomeTipo=NomeTipo'
      'Nome=Nome'
      'VlrMI=VlrMI'
      'VlrExp=VlrExp'
      'CodItem=CodItem')
    DataSource = dsmResumo
    BCDToCurrency = False
    Left = 648
    Top = 360
  end
  object dsTipoInd: TDataSource
    DataSet = cdsTipoInd
    Left = 448
    Top = 343
  end
  object cdsTipoInd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoInd'
    Left = 408
    Top = 343
    object cdsTipoIndTIPO: TStringField
      FieldName = 'TIPO'
    end
  end
  object dspTipoInd: TDataSetProvider
    DataSet = sdsTipoInd
    Left = 368
    Top = 343
  end
  object sdsTipoInd: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT TIPO'#13#10'FROM INDICECUSTO'#13#10'WHERE FILIAL = :FILIAL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 336
    Top = 343
  end
end
