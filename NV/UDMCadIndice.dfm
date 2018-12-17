object DMCadIndice: TDMCadIndice
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 270
  Top = 176
  Height = 395
  Width = 865
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT I.*,'#13#10'CASE'#13#10'  WHEN TIPO_PV = '#39'P'#39' THEN '#39'Percentual (%)'#39#13#10' ' +
      ' WHEN TIPO_PV = '#39'V'#39' THEN '#39'Valor (R$)'#39#13#10'  end DESC_TIPO_PV,'#13#10'CASE' +
      #13#10'  WHEN USA_EMPRESA = '#39'G'#39' THEN '#39'Geral'#39#13#10'  WHEN USA_EMPRESA = '#39'S' +
      #39' THEN '#39'Simples'#39#13#10'  WHEN USA_EMPRESA = '#39'A'#39' THEN '#39'Ambas'#39#13#10'  end D' +
      'ESC_USA_EMPRESA,'#13#10'CASE'#13#10'  WHEN TIPO_PV = '#39'P'#39' THEN '#39'%'#39#13#10'  WHEN TI' +
      'PO_PV = '#39'V'#39' THEN '#39#39#13#10'  end PV,'#13#10' C.DESCRICAO NOME_CONTA_ORC , C.' +
      'codigo CODIGO_CONTA_ORC'#13#10'FROM INDICE I'#13#10'LEFT JOIN CONTA_ORCAMENT' +
      'O C'#13#10'ON I.ID_CONTA_ORCAMENTO = C.ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 512
    Top = 8
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    UpdateMode = upWhereChanged
    Left = 544
    Top = 8
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 576
    Top = 8
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsConsultaTIPO_PV: TStringField
      FieldName = 'TIPO_PV'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '0.00#'
    end
    object cdsConsultaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaUSA_EMPRESA: TStringField
      FieldName = 'USA_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaDESC_TIPO_PV: TStringField
      FieldName = 'DESC_TIPO_PV'
      FixedChar = True
      Size = 14
    end
    object cdsConsultaDESC_USA_EMPRESA: TStringField
      FieldName = 'DESC_USA_EMPRESA'
      FixedChar = True
      Size = 7
    end
    object cdsConsultaPV: TStringField
      FieldName = 'PV'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaLUCRO: TStringField
      FieldName = 'LUCRO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsConsultaNOME_CONTA_ORC: TStringField
      FieldName = 'NOME_CONTA_ORC'
      Size = 50
    end
    object cdsConsultaCODIGO_CONTA_ORC: TStringField
      FieldName = 'CODIGO_CONTA_ORC'
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 608
    Top = 8
  end
  object sdsIndice: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM INDICE'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 8
    object sdsIndiceID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsIndiceNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsIndiceTIPO_PV: TStringField
      FieldName = 'TIPO_PV'
      FixedChar = True
      Size = 1
    end
    object sdsIndiceVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsIndiceINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsIndiceUSA_EMPRESA: TStringField
      FieldName = 'USA_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object sdsIndiceLUCRO: TStringField
      FieldName = 'LUCRO'
      FixedChar = True
      Size = 1
    end
    object sdsIndiceFINANCEIRO: TStringField
      FieldName = 'FINANCEIRO'
      FixedChar = True
      Size = 1
    end
    object sdsIndicePRAZO_DIAS: TIntegerField
      FieldName = 'PRAZO_DIAS'
    end
    object sdsIndiceID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
  end
  object cdsIndice: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspIndice'
    OnNewRecord = cdsIndiceNewRecord
    OnReconcileError = cdsIndiceReconcileError
    Left = 208
    Top = 8
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
    object cdsIndiceVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '0.00#'
    end
    object cdsIndiceINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
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
    object cdsIndiceID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
  end
  object dspIndice: TDataSetProvider
    DataSet = sdsIndice
    Left = 128
    Top = 8
  end
  object dsIndice: TDataSource
    DataSet = cdsIndice
    Left = 288
    Top = 8
  end
  object sdsContaOrcamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.ID, C.DESCRICAO, C.TIPO, C.CODIGO, c.superior, CASE NIV' +
      'EL'#13#10'           WHEN 5 THEN '#39'          '#39' ||  DESCRICAO'#13#10'         ' +
      '  WHEN 4 THEN '#39'        '#39' ||  DESCRICAO'#13#10'           WHEN 3 THEN '#39 +
      '      '#39' ||  DESCRICAO'#13#10'           WHEN 2 THEN '#39'    '#39' ||  DESCRIC' +
      'AO'#13#10'           WHEN 1 THEN DESCRICAO'#13#10'           ELSE DESCRICAO'#13 +
      #10'           END AS NOME_AUX'#13#10'FROM CONTA_ORCAMENTO C '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 513
    Top = 88
  end
  object dspContaOrcamento: TDataSetProvider
    DataSet = sdsContaOrcamento
    Left = 545
    Top = 88
  end
  object cdsContaOrcamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspContaOrcamento'
    Left = 585
    Top = 88
    object cdsContaOrcamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContaOrcamentoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsContaOrcamentoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsContaOrcamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsContaOrcamentoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 60
    end
    object cdsContaOrcamentoSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
  end
  object dsContaOrcamento: TDataSource
    DataSet = cdsContaOrcamento
    Left = 625
    Top = 88
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.USA_CONTA_ORCAMENTO'
      'FROM PARAMETROS P')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 160
    object qParametrosUSA_CONTA_ORCAMENTO: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
  end
end
