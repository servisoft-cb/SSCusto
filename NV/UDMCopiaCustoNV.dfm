object DMCopiaCustoNV: TDMCopiaCustoNV
  OldCreateOrder = False
  Left = 444
  Top = 115
  Height = 447
  Width = 557
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
    Left = 144
    Top = 8
  end
  object cdsCustoNV: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCustoNV'
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
end
