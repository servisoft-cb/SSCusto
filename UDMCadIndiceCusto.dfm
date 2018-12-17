object DMCadIndiceCusto: TDMCadIndiceCusto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 270
  Top = 176
  Height = 280
  Width = 865
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 616
    Top = 127
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 576
    Top = 127
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
    Left = 536
    Top = 127
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT FIL.* '#13#10'FROM FILIAL FIL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 127
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT F.NOME_INTERNO NOME_INTERNO_FILIAL, I.*'#13#10'FROM INDICECUSTO' +
      ' I'#13#10'INNER JOIN FILIAL F'#13#10'ON I.FILIAL = F.ID'#13#10
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
    object cdsConsultaNOME_INTERNO_FILIAL: TStringField
      FieldName = 'NOME_INTERNO_FILIAL'
      Size = 30
    end
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsultaCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object cdsConsultaPERCUNICO: TFloatField
      FieldName = 'PERCUNICO'
    end
    object cdsConsultaCUSTOFINANCEIRO: TFloatField
      FieldName = 'CUSTOFINANCEIRO'
    end
    object cdsConsultaPERCLUCRO: TFloatField
      FieldName = 'PERCLUCRO'
    end
    object cdsConsultaMATERIALDIVERSO: TFloatField
      FieldName = 'MATERIALDIVERSO'
    end
    object cdsConsultaFIXO: TFloatField
      FieldName = 'FIXO'
    end
    object cdsConsultaFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object cdsConsultaMAODEOBRA: TFloatField
      FieldName = 'MAODEOBRA'
    end
    object cdsConsultaIMPOSTO: TFloatField
      FieldName = 'IMPOSTO'
    end
    object cdsConsultaMARKUP: TFloatField
      FieldName = 'MARKUP'
    end
    object cdsConsultaMARKUPEXP: TFloatField
      FieldName = 'MARKUPEXP'
    end
    object cdsConsultaMAODEOBRADIRETA: TFloatField
      FieldName = 'MAODEOBRADIRETA'
    end
    object cdsConsultaCOMISSAODOLAR: TFloatField
      FieldName = 'COMISSAODOLAR'
    end
    object cdsConsultaCUSTOFINANCEIRODOLAR: TFloatField
      FieldName = 'CUSTOFINANCEIRODOLAR'
    end
    object cdsConsultaFRETEDOLAR: TFloatField
      FieldName = 'FRETEDOLAR'
    end
    object cdsConsultaPERCUNICODOLAR: TFloatField
      FieldName = 'PERCUNICODOLAR'
    end
    object cdsConsultaPERCLUCRODOLAR: TFloatField
      FieldName = 'PERCLUCRODOLAR'
    end
    object cdsConsultaPERCICMSDOLAR: TFloatField
      FieldName = 'PERCICMSDOLAR'
    end
    object cdsConsultaIMPOSTODOLAR: TFloatField
      FieldName = 'IMPOSTODOLAR'
    end
    object cdsConsultaPERCICMS: TFloatField
      FieldName = 'PERCICMS'
    end
    object cdsConsultaTIPO: TStringField
      FieldName = 'TIPO'
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 608
    Top = 8
  end
  object sdsIndiceCusto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM INDICECUSTO'#13#10'WHERE ID = :ID'
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
    object sdsIndiceCustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsIndiceCustoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsIndiceCustoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object sdsIndiceCustoPERCUNICO: TFloatField
      FieldName = 'PERCUNICO'
    end
    object sdsIndiceCustoCUSTOFINANCEIRO: TFloatField
      FieldName = 'CUSTOFINANCEIRO'
    end
    object sdsIndiceCustoPERCLUCRO: TFloatField
      FieldName = 'PERCLUCRO'
    end
    object sdsIndiceCustoMATERIALDIVERSO: TFloatField
      FieldName = 'MATERIALDIVERSO'
    end
    object sdsIndiceCustoFIXO: TFloatField
      FieldName = 'FIXO'
    end
    object sdsIndiceCustoFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object sdsIndiceCustoMAODEOBRA: TFloatField
      FieldName = 'MAODEOBRA'
    end
    object sdsIndiceCustoIMPOSTO: TFloatField
      FieldName = 'IMPOSTO'
    end
    object sdsIndiceCustoMARKUP: TFloatField
      FieldName = 'MARKUP'
    end
    object sdsIndiceCustoMARKUPEXP: TFloatField
      FieldName = 'MARKUPEXP'
    end
    object sdsIndiceCustoMAODEOBRADIRETA: TFloatField
      FieldName = 'MAODEOBRADIRETA'
    end
    object sdsIndiceCustoCOMISSAODOLAR: TFloatField
      FieldName = 'COMISSAODOLAR'
    end
    object sdsIndiceCustoCUSTOFINANCEIRODOLAR: TFloatField
      FieldName = 'CUSTOFINANCEIRODOLAR'
    end
    object sdsIndiceCustoFRETEDOLAR: TFloatField
      FieldName = 'FRETEDOLAR'
    end
    object sdsIndiceCustoPERCUNICODOLAR: TFloatField
      FieldName = 'PERCUNICODOLAR'
    end
    object sdsIndiceCustoPERCLUCRODOLAR: TFloatField
      FieldName = 'PERCLUCRODOLAR'
    end
    object sdsIndiceCustoPERCICMSDOLAR: TFloatField
      FieldName = 'PERCICMSDOLAR'
    end
    object sdsIndiceCustoIMPOSTODOLAR: TFloatField
      FieldName = 'IMPOSTODOLAR'
    end
    object sdsIndiceCustoPERCICMS: TFloatField
      FieldName = 'PERCICMS'
    end
    object sdsIndiceCustoTIPO: TStringField
      FieldName = 'TIPO'
    end
  end
  object cdsIndiceCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspIndiceCusto'
    OnReconcileError = cdsIndiceCustoReconcileError
    Left = 208
    Top = 8
    object cdsIndiceCustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsIndiceCustoFILIAL: TIntegerField
      FieldName = 'FILIAL'
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
    object cdsIndiceCustoPERCICMSDOLAR: TFloatField
      FieldName = 'PERCICMSDOLAR'
    end
    object cdsIndiceCustoIMPOSTODOLAR: TFloatField
      FieldName = 'IMPOSTODOLAR'
    end
    object cdsIndiceCustoPERCICMS: TFloatField
      FieldName = 'PERCICMS'
    end
    object cdsIndiceCustoTIPO: TStringField
      FieldName = 'TIPO'
    end
  end
  object dspIndiceCusto: TDataSetProvider
    DataSet = sdsIndiceCusto
    Left = 128
    Top = 8
  end
  object dsIndiceCusto: TDataSource
    DataSet = cdsIndiceCusto
    Left = 288
    Top = 8
  end
end
