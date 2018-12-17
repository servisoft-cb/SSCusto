object DMCadCustoNV: TDMCadCustoNV
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 177
  Top = 33
  Height = 615
  Width = 983
  object sdsCustoNV: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CUSTONV'#13#10'WHERE ID = :ID'
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
    object sdsCustoNVID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCustoNVFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsCustoNVID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsCustoNVREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsCustoNVDTCALCULO: TDateField
      FieldName = 'DTCALCULO'
    end
    object sdsCustoNVPERC_TOTAL_ENCARGOS: TFloatField
      FieldName = 'PERC_TOTAL_ENCARGOS'
    end
    object sdsCustoNVCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
    end
    object sdsCustoNVPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsCustoNVVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
    end
    object sdsCustoNVVLR_TERCEIRO: TFloatField
      FieldName = 'VLR_TERCEIRO'
    end
    object sdsCustoNVVLR_CUSTO_FINANCEIRO: TFloatField
      FieldName = 'VLR_CUSTO_FINANCEIRO'
    end
    object sdsCustoNVPERC_LUCRO: TFloatField
      FieldName = 'PERC_LUCRO'
    end
    object sdsCustoNVPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsCustoNVPRECO_SUGERIDO: TFloatField
      FieldName = 'PRECO_SUGERIDO'
    end
    object sdsCustoNVVLR_PROCESSO: TFloatField
      FieldName = 'VLR_PROCESSO'
    end
    object sdsCustoNVPRAZO_DIAS: TIntegerField
      FieldName = 'PRAZO_DIAS'
    end
    object sdsCustoNVPRAZO_DIAS_PADRAO: TIntegerField
      FieldName = 'PRAZO_DIAS_PADRAO'
    end
    object sdsCustoNVPERC_FINANCEIRO: TFloatField
      FieldName = 'PERC_FINANCEIRO'
    end
    object sdsCustoNVPERC_FINANCEIRO_PADRAO: TFloatField
      FieldName = 'PERC_FINANCEIRO_PADRAO'
    end
    object sdsCustoNVVLR_MAOOBRA: TFloatField
      FieldName = 'VLR_MAOOBRA'
    end
    object sdsCustoNVID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
  end
  object dspCustoNV: TDataSetProvider
    DataSet = sdsCustoNV
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspCustoNVUpdateError
    Left = 144
    Top = 8
  end
  object cdsCustoNV: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCustoNV'
    OnNewRecord = cdsCustoNVNewRecord
    OnReconcileError = cdsCustoNVReconcileError
    Left = 208
    Top = 8
    object cdsCustoNVID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustoNVFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsCustoNVID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsCustoNVREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsCustoNVDTCALCULO: TDateField
      FieldName = 'DTCALCULO'
    end
    object cdsCustoNVPERC_TOTAL_ENCARGOS: TFloatField
      FieldName = 'PERC_TOTAL_ENCARGOS'
      DisplayFormat = '0.00'
    end
    object cdsCustoNVCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
    end
    object cdsCustoNVPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '0.00'
    end
    object cdsCustoNVVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
      DisplayFormat = '0.00'
    end
    object cdsCustoNVVLR_TERCEIRO: TFloatField
      FieldName = 'VLR_TERCEIRO'
      DisplayFormat = '0.00'
    end
    object cdsCustoNVVLR_CUSTO_FINANCEIRO: TFloatField
      FieldName = 'VLR_CUSTO_FINANCEIRO'
      DisplayFormat = '0.00'
    end
    object cdsCustoNVPERC_LUCRO: TFloatField
      FieldName = 'PERC_LUCRO'
      DisplayFormat = '0.00'
    end
    object cdsCustoNVPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '0.00'
    end
    object cdsCustoNVPRECO_SUGERIDO: TFloatField
      FieldName = 'PRECO_SUGERIDO'
      DisplayFormat = '0.00'
    end
    object cdsCustoNVsdsCustoNV_Mat: TDataSetField
      FieldName = 'sdsCustoNV_Mat'
    end
    object cdsCustoNVsdsCustoNV_Atelier: TDataSetField
      FieldName = 'sdsCustoNV_Atelier'
    end
    object cdsCustoNVsdsCustoNV_Ind: TDataSetField
      FieldName = 'sdsCustoNV_Ind'
    end
    object cdsCustoNVsdsCustoNV_Processo: TDataSetField
      FieldName = 'sdsCustoNV_Processo'
    end
    object cdsCustoNVVLR_PROCESSO: TFloatField
      FieldName = 'VLR_PROCESSO'
    end
    object cdsCustoNVPRAZO_DIAS: TIntegerField
      FieldName = 'PRAZO_DIAS'
    end
    object cdsCustoNVPRAZO_DIAS_PADRAO: TIntegerField
      FieldName = 'PRAZO_DIAS_PADRAO'
    end
    object cdsCustoNVPERC_FINANCEIRO: TFloatField
      FieldName = 'PERC_FINANCEIRO'
    end
    object cdsCustoNVPERC_FINANCEIRO_PADRAO: TFloatField
      FieldName = 'PERC_FINANCEIRO_PADRAO'
    end
    object cdsCustoNVVLR_MAOOBRA: TFloatField
      FieldName = 'VLR_MAOOBRA'
    end
    object cdsCustoNVID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
  end
  object dsCustoNV: TDataSource
    DataSet = cdsCustoNV
    Left = 280
    Top = 8
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 840
    Top = 175
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 800
    Top = 175
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
    Left = 760
    Top = 175
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT FIL.* '#13#10'FROM FILIAL FIL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 175
  end
  object dsCustoNV_Mestre: TDataSource
    DataSet = sdsCustoNV
    Left = 32
    Top = 48
  end
  object sdsCustoNV_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.*, M.NOME NOME_MATERIAL, COMB.NOME NOME_COR'#13#10'FROM CUSTO' +
      'NV_MAT C'#13#10'LEFT JOIN PRODUTO M'#13#10'ON C.ID_MATERIAL = M.ID'#13#10'LEFT JOI' +
      'N COMBINACAO COMB'#13#10'ON C.ID_COR = COMB.ID'#13#10'WHERE C.ID = :ID'#13#10
    DataSource = dsCustoNV_Mestre
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
    object sdsCustoNV_MatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCustoNV_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCustoNV_MatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object sdsCustoNV_MatID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsCustoNV_MatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsCustoNV_MatCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object sdsCustoNV_MatVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsCustoNV_MatPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsCustoNV_MatPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsCustoNV_MatVLR_LIQUIDO: TFloatField
      FieldName = 'VLR_LIQUIDO'
    end
    object sdsCustoNV_MatVLR_CUSTO: TFloatField
      FieldName = 'VLR_CUSTO'
    end
    object sdsCustoNV_MatVLR_CUSTO_DOLAR: TFloatField
      FieldName = 'VLR_CUSTO_DOLAR'
    end
    object sdsCustoNV_MatCOURO: TStringField
      FieldName = 'COURO'
      FixedChar = True
      Size = 1
    end
    object sdsCustoNV_MatNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      ProviderFlags = []
      Size = 100
    end
    object sdsCustoNV_MatNOME_COR: TStringField
      FieldName = 'NOME_COR'
      ProviderFlags = []
      Size = 60
    end
  end
  object cdsCustoNV_Mat: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCustoNVsdsCustoNV_Mat
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnNewRecord = cdsCustoNV_MatNewRecord
    Left = 168
    Top = 88
    object cdsCustoNV_MatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustoNV_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustoNV_MatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsCustoNV_MatID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsCustoNV_MatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsCustoNV_MatCONSUMO: TFloatField
      FieldName = 'CONSUMO'
      DisplayFormat = '0.00000'
    end
    object cdsCustoNV_MatVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsCustoNV_MatPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsCustoNV_MatPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsCustoNV_MatVLR_LIQUIDO: TFloatField
      FieldName = 'VLR_LIQUIDO'
    end
    object cdsCustoNV_MatVLR_CUSTO: TFloatField
      FieldName = 'VLR_CUSTO'
    end
    object cdsCustoNV_MatVLR_CUSTO_DOLAR: TFloatField
      FieldName = 'VLR_CUSTO_DOLAR'
    end
    object cdsCustoNV_MatCOURO: TStringField
      FieldName = 'COURO'
      FixedChar = True
      Size = 1
    end
    object cdsCustoNV_MatNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      ProviderFlags = []
      Size = 100
    end
    object cdsCustoNV_MatNOME_COR: TStringField
      FieldName = 'NOME_COR'
      ProviderFlags = []
      Size = 60
    end
  end
  object dsCustoNV_Mat: TDataSource
    DataSet = cdsCustoNV_Mat
    Left = 248
    Top = 88
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT F.NOME_INTERNO NOME_INTERNO_FILIAL, P.nome NOME_PRODUTO, ' +
      'C.*,'#13#10'CLI.NOME NOME_CLIENTE'#13#10'FROM CUSTONV C'#13#10'INNER JOIN PRODUTO ' +
      'P'#13#10'ON C.ID_PRODUTO = P.ID'#13#10'INNER JOIN FILIAL F'#13#10'ON C.FILIAL = F.' +
      'ID'#13#10'LEFT JOIN PESSOA CLI'#13#10'ON C.ID_CLIENTE = CLI.CODIGO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 512
    Top = 8
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    UpdateMode = upWhereChanged
    OnUpdateError = dspCustoNVUpdateError
    Left = 544
    Top = 8
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 576
    Top = 8
    object cdsConsultaNOME_INTERNO_FILIAL: TStringField
      FieldName = 'NOME_INTERNO_FILIAL'
      Size = 30
    end
    object cdsConsultaNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsultaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsultaDTCALCULO: TDateField
      FieldName = 'DTCALCULO'
    end
    object cdsConsultaPERC_TOTAL_ENCARGOS: TFloatField
      FieldName = 'PERC_TOTAL_ENCARGOS'
    end
    object cdsConsultaCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
    end
    object cdsConsultaPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsConsultaVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
    end
    object cdsConsultaVLR_TERCEIRO: TFloatField
      FieldName = 'VLR_TERCEIRO'
    end
    object cdsConsultaVLR_CUSTO_FINANCEIRO: TFloatField
      FieldName = 'VLR_CUSTO_FINANCEIRO'
    end
    object cdsConsultaPERC_LUCRO: TFloatField
      FieldName = 'PERC_LUCRO'
    end
    object cdsConsultaPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
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
    Top = 336
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
    Top = 336
  end
  object frxRichObject1: TfrxRichObject
    Left = 664
    Top = 336
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
    BCDToCurrency = False
    Left = 568
    Top = 384
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
    Top = 336
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
    Top = 336
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
  object sdsIndice: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM INDICE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 80
  end
  object cdsIndice: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspIndice'
    Left = 560
    Top = 80
    object cdsIndiceID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsIndiceNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsIndiceTIPO_PV: TStringField
      FieldName = 'TIPO_PV'
      FixedChar = True
      Size = 1
    end
    object cdsIndiceINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsIndiceVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsIndiceUSA_EMPRESA: TStringField
      FieldName = 'USA_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsIndiceLUCRO: TStringField
      FieldName = 'LUCRO'
      FixedChar = True
      Size = 1
    end
    object cdsIndiceFINANCEIRO: TStringField
      FieldName = 'FINANCEIRO'
      FixedChar = True
      Size = 1
    end
    object cdsIndicePRAZO_DIAS: TIntegerField
      FieldName = 'PRAZO_DIAS'
    end
  end
  object dspIndice: TDataSetProvider
    DataSet = sdsIndice
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
    Top = 184
  end
  object cdsCorMat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCorMat'
    Left = 552
    Top = 184
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
    Top = 184
  end
  object dsCorMat: TDataSource
    DataSet = cdsCorMat
    Left = 584
    Top = 184
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
    Left = 760
    Top = 320
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
    Top = 311
    object cdsProduto_ConsumoNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      ProviderFlags = []
      Size = 100
    end
    object cdsProduto_ConsumoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_ConsumoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_ConsumoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
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
    object cdsProduto_ConsumoESPECIFICO: TStringField
      FieldName = 'ESPECIFICO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsumoQTD_CONSUMO: TFMTBCDField
      FieldName = 'QTD_CONSUMO'
      DisplayFormat = '0.00000'
      Precision = 15
      Size = 5
    end
  end
  object dspProduto_Consumo: TDataSetProvider
    DataSet = sdsProduto_Consumo
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 311
  end
  object sdsProduto_Consumo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT MAT.NOME NOME_MATERIAL, PC.ID, PC.item, PC.id_material, P' +
      'C.qtd_unidade, PC.unidade,'#13#10'PC.id_posicao, PC.tipo_consumo, PC.i' +
      'mp_rotulo, PC.imp_talao, PC.id_setor,'#13#10'PC.tingimento, PC.especif' +
      'ico, CAST(PC.qtd_consumo AS NUMERIC(15,5)) qtd_consumo'#13#10'FROM PRO' +
      'DUTO_CONSUMO PC'#13#10'left join PRODUTO MAT'#13#10'ON PC.ID_MATERIAL = MAT.' +
      'ID'#13#10'WHERE PC.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 311
    object sdsProduto_ConsumoNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      ProviderFlags = []
      Size = 100
    end
    object sdsProduto_ConsumoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_ConsumoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_ConsumoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object sdsProduto_ConsumoQTD_UNIDADE: TFloatField
      FieldName = 'QTD_UNIDADE'
    end
    object sdsProduto_ConsumoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsProduto_ConsumoID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object sdsProduto_ConsumoTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_ConsumoIMP_ROTULO: TStringField
      FieldName = 'IMP_ROTULO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_ConsumoIMP_TALAO: TStringField
      FieldName = 'IMP_TALAO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_ConsumoID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object sdsProduto_ConsumoTINGIMENTO: TStringField
      FieldName = 'TINGIMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_ConsumoESPECIFICO: TStringField
      FieldName = 'ESPECIFICO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_ConsumoQTD_CONSUMO: TFMTBCDField
      FieldName = 'QTD_CONSUMO'
      Precision = 15
      Size = 5
    end
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
    Top = 359
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
    Top = 359
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
    Top = 359
  end
  object dsProduto_Comb: TDataSource
    DataSet = cdsProduto_Comb
    Left = 216
    Top = 360
  end
  object cdsProduto_Comb_Mat: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;NOME_COMBINACAO'
    Params = <>
    ProviderName = 'dspProduto_Comb_Mat'
    Left = 176
    Top = 415
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
    Top = 415
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
    Top = 415
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
    Left = 552
    Top = 440
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
    Left = 576
    Top = 436
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
    BCDToCurrency = False
    Left = 608
    Top = 384
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
    Top = 384
  end
  object sdsCustoNV_Atelier: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CA.*'#13#10'FROM CUSTONV_ATELIER CA'#13#10'WHERE CA.ID = :ID'#13#10
    DataSource = dsCustoNV_Mestre
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
    Top = 144
    object sdsCustoNV_AtelierID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCustoNV_AtelierITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCustoNV_AtelierID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object sdsCustoNV_AtelierNOME_ATELIER: TStringField
      FieldName = 'NOME_ATELIER'
      Size = 40
    end
    object sdsCustoNV_AtelierVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsCustoNV_AtelierID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
  end
  object cdsCustoNV_Atelier: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCustoNVsdsCustoNV_Atelier
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnCalcFields = cdsCustoNV_AtelierCalcFields
    Left = 168
    Top = 144
    object cdsCustoNV_AtelierID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustoNV_AtelierITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustoNV_AtelierID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsCustoNV_AtelierNOME_ATELIER: TStringField
      FieldName = 'NOME_ATELIER'
      Size = 40
    end
    object cdsCustoNV_AtelierVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsCustoNV_AtelierID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsCustoNV_AtelierclNomeSetor: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNomeSetor'
      ProviderFlags = []
      Size = 40
      Calculated = True
    end
  end
  object dsCustoNV_Atelier: TDataSource
    DataSet = cdsCustoNV_Atelier
    Left = 248
    Top = 144
  end
  object sdsCustoNV_Ind: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.*,'#13#10'CASE'#13#10'WHEN C.TIPO_PV = '#39'P'#39' THEN '#39'%'#39#13#10'ELSE '#39'R$'#39#13#10'END' +
      ' PV'#13#10'FROM CUSTONV_IND C'#13#10'WHERE C.ID = :ID'#13#10
    DataSource = dsCustoNV_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 200
    object sdsCustoNV_IndID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCustoNV_IndITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCustoNV_IndID_INDICE: TIntegerField
      FieldName = 'ID_INDICE'
    end
    object sdsCustoNV_IndTIPO_PV: TStringField
      FieldName = 'TIPO_PV'
      FixedChar = True
      Size = 1
    end
    object sdsCustoNV_IndVALOR_INDICE: TFloatField
      FieldName = 'VALOR_INDICE'
    end
    object sdsCustoNV_IndVALOR_CALCULADO: TFloatField
      FieldName = 'VALOR_CALCULADO'
    end
    object sdsCustoNV_IndPV: TStringField
      FieldName = 'PV'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsCustoNV_IndLUCRO: TStringField
      FieldName = 'LUCRO'
      FixedChar = True
      Size = 1
    end
    object sdsCustoNV_IndFINANCEIRO: TStringField
      FieldName = 'FINANCEIRO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsCustoNV_Ind: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCustoNVsdsCustoNV_Ind
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnCalcFields = cdsCustoNV_IndCalcFields
    OnNewRecord = cdsCustoNV_IndNewRecord
    Left = 168
    Top = 200
    object cdsCustoNV_IndID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustoNV_IndITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustoNV_IndID_INDICE: TIntegerField
      FieldName = 'ID_INDICE'
    end
    object cdsCustoNV_IndTIPO_PV: TStringField
      FieldName = 'TIPO_PV'
      FixedChar = True
      Size = 1
    end
    object cdsCustoNV_IndVALOR_INDICE: TFloatField
      FieldName = 'VALOR_INDICE'
    end
    object cdsCustoNV_IndVALOR_CALCULADO: TFloatField
      FieldName = 'VALOR_CALCULADO'
      DisplayFormat = '0.000'
    end
    object cdsCustoNV_IndclNome_Indice: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Indice'
      ProviderFlags = []
      Size = 30
      Calculated = True
    end
    object cdsCustoNV_IndPV: TStringField
      FieldName = 'PV'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsCustoNV_IndLUCRO: TStringField
      FieldName = 'LUCRO'
      FixedChar = True
      Size = 1
    end
    object cdsCustoNV_IndFINANCEIRO: TStringField
      FieldName = 'FINANCEIRO'
      FixedChar = True
      Size = 1
    end
  end
  object dsCustoNV_Ind: TDataSource
    DataSet = cdsCustoNV_Ind
    Left = 248
    Top = 200
  end
  object qIndice: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM INDICE'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 328
    object qIndiceID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qIndiceNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object qIndiceTIPO_PV: TStringField
      FieldName = 'TIPO_PV'
      FixedChar = True
      Size = 1
    end
    object qIndiceVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qIndiceINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qIndiceUSA_EMPRESA: TStringField
      FieldName = 'USA_EMPRESA'
      FixedChar = True
      Size = 1
    end
  end
  object dsIndice: TDataSource
    DataSet = cdsIndice
    Left = 600
    Top = 80
  end
  object sdsAtelier: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.CODIGO, P.NOME, P.CNPJ_CPF'#13#10'FROM PESSOA P'#13#10'WHERE P.TP_A' +
      'TELIER = '#39'S'#39#13#10'  AND P.INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 128
  end
  object cdsAtelier: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspAtelier'
    Left = 568
    Top = 128
    object cdsAtelierCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsAtelierNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsAtelierCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
  end
  object dspAtelier: TDataSetProvider
    DataSet = sdsAtelier
    Left = 536
    Top = 128
  end
  object dsAtelier: TDataSource
    DataSet = cdsAtelier
    Left = 600
    Top = 128
  end
  object cdsProduto_Emb: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Emb'
    Left = 176
    Top = 471
    object cdsProduto_EmbID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_EmbITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProduto_EmbID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsProduto_EmbQTD_EMB: TFloatField
      FieldName = 'QTD_EMB'
    end
    object cdsProduto_EmbTIPO_EMB: TStringField
      FieldName = 'TIPO_EMB'
      Size = 1
    end
    object cdsProduto_EmbNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProduto_EmbPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
  end
  object dspProduto_Emb: TDataSetProvider
    DataSet = sdsProduto_Emb
    Left = 136
    Top = 471
  end
  object sdsProduto_Emb: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PE.*, MAT.NOME, MAT.preco_custo'#13#10'FROM produto_emb PE'#13#10'INN' +
      'ER JOIN PRODUTO MAT'#13#10'ON PE.id_material = MAT.ID'#13#10'WHERE PE.ID = :' +
      'ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 471
  end
  object dsProduto_Emb: TDataSource
    DataSet = cdsProduto_Emb
    Left = 216
    Top = 472
  end
  object sdsCustoNV_Processo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CP.*, P.NOME NOME_PROCESSO'#13#10'FROM CUSTONV_PROCESSO CP'#13#10'INN' +
      'ER JOIN PROCESSO P'#13#10'ON CP.ID_PROCESSO = P.ID'#13#10'WHERE CP.ID = :ID'
    DataSource = dsCustoNV_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 248
    object sdsCustoNV_ProcessoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCustoNV_ProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCustoNV_ProcessoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object sdsCustoNV_ProcessoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsCustoNV_ProcessoCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object sdsCustoNV_ProcessoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsCustoNV_ProcessoNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      ProviderFlags = []
      Size = 30
    end
  end
  object cdsCustoNV_Processo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCustoNVsdsCustoNV_Processo
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 168
    Top = 248
    object cdsCustoNV_ProcessoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustoNV_ProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustoNV_ProcessoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsCustoNV_ProcessoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsCustoNV_ProcessoCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object cdsCustoNV_ProcessoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsCustoNV_ProcessoNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      ProviderFlags = []
      Size = 30
    end
  end
  object dsCustoNV_Processo: TDataSource
    DataSet = cdsCustoNV_Processo
    Left = 248
    Top = 248
  end
  object sdsProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PROCESSO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 240
  end
  object cdsProcesso: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProcesso'
    Left = 560
    Top = 240
    object cdsProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProcessoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspProcesso: TDataSetProvider
    DataSet = sdsProcesso
    Left = 528
    Top = 240
  end
  object dsProcesso: TDataSource
    DataSet = cdsProcesso
    Left = 592
    Top = 240
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_GERAL')
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 400
    object qParametros_GeralUSA_CUSTO_PROC_ATE: TStringField
      FieldName = 'USA_CUSTO_PROC_ATE'
      FixedChar = True
      Size = 1
    end
  end
  object qSetor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from SETOR'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 240
    object qSetorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qSetorNOME: TStringField
      FieldName = 'NOME'
    end
  end
  object sdsSetor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SETOR'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 288
  end
  object cdsSetor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspSetor'
    Left = 560
    Top = 288
    object cdsSetorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSetorNOME: TStringField
      FieldName = 'NOME'
    end
  end
  object dspSetor: TDataSetProvider
    DataSet = sdsSetor
    Left = 528
    Top = 288
  end
  object dsSetor: TDataSource
    DataSet = cdsSetor
    Left = 592
    Top = 288
  end
  object cdsProduto_Ate: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Ate'
    Left = 176
    Top = 519
    object cdsProduto_AteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_AteITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProduto_AteID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsProduto_AteID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsProduto_AteVLR_PAR: TFloatField
      FieldName = 'VLR_PAR'
    end
    object cdsProduto_AteNOME_ATELIER: TStringField
      FieldName = 'NOME_ATELIER'
      Size = 60
    end
  end
  object dspProduto_Ate: TDataSetProvider
    DataSet = sdsProduto_Ate
    Left = 136
    Top = 519
  end
  object sdsProduto_Ate: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.*, ATE.NOME NOME_ATELIER'#13#10'FROM produto_atelier P'#13#10'INNER' +
      ' JOIN PESSOA ATE'#13#10'ON P.id_atelier = ATE.codigo'#13#10'WHERE P.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 519
  end
  object dsProduto_Ate: TDataSource
    DataSet = cdsProduto_Ate
    Left = 216
    Top = 520
  end
  object qTotalFixa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select sum(c.vlr_orc) VLR_ORC'
      'from conta_orcamento c'
      'WHERE C.TIPO_DESPESA = '#39'F'#39
      '  AND C.INATIVO = '#39'N'#39
      '  AND C.vlr_orc IS NOT NULL'
      '  AND C.tipo = '#39'A'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 488
    object qTotalFixaVLR_ORC: TFloatField
      FieldName = 'VLR_ORC'
      DisplayFormat = '0.00'
    end
  end
  object qTotalPares: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT sum(p.previsao) PREVISAO'
      'FROM projecao_semana p'
      'WHERE P.ANO = :ANO')
    SQLConnection = dmDatabase.scoDados
    Left = 752
    Top = 488
    object qTotalParesPREVISAO: TFMTBCDField
      FieldName = 'PREVISAO'
      Precision = 15
      Size = 0
    end
  end
  object cdsProduto_Processo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Processo'
    Left = 440
    Top = 479
    object cdsProduto_ProcessoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_ProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_ProcessoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      Required = True
    end
    object cdsProduto_ProcessoID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsProduto_ProcessoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsProduto_ProcessoUN: TStringField
      FieldName = 'UN'
      Size = 3
    end
    object cdsProduto_ProcessoVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
    end
    object cdsProduto_ProcessoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsProduto_ProcessoOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
  end
  object dspProduto_Processo: TDataSetProvider
    DataSet = sdsProduto_Processo
    UpdateMode = upWhereKeyOnly
    Left = 400
    Top = 479
  end
  object sdsProduto_Processo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_PROCESSO'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 479
    object sdsProduto_ProcessoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_ProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_ProcessoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      Required = True
    end
    object sdsProduto_ProcessoID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object sdsProduto_ProcessoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsProduto_ProcessoUN: TStringField
      FieldName = 'UN'
      Size = 3
    end
    object sdsProduto_ProcessoVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
    end
    object sdsProduto_ProcessoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsProduto_ProcessoOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
  end
  object qParametros_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_PROD')
    SQLConnection = dmDatabase.scoDados
    Left = 480
    Top = 376
    object qParametros_ProdID_POSICAO_PADRAO: TIntegerField
      FieldName = 'ID_POSICAO_PADRAO'
    end
  end
  object qParametros_Fin: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_FIN')
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 368
    object qParametros_FinUSA_CLIENTE_CUSTO: TStringField
      FieldName = 'USA_CLIENTE_CUSTO'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinINFORMA_MOBRA_MAN: TStringField
      FieldName = 'INFORMA_MOBRA_MAN'
      FixedChar = True
      Size = 1
    end
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.CODIGO, P.NOME, P.cnpj_cpf'#13#10'FROM PESSOA P'#13#10'WHERE P.tp_c' +
      'liente = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 336
    Top = 104
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 400
    Top = 104
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 368
    Top = 104
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 432
    Top = 104
  end
end
