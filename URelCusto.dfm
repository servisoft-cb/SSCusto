object fRelCusto: TfRelCusto
  Left = 127
  Top = 70
  Width = 936
  Height = 582
  Caption = 'fRelCusto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 24
    Top = 24
    Width = 794
    Height = 1123
    DataSource = DMCadCusto.dsCustoImp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 26
      Top = 30
      Width = 742
      Height = 68
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 304
        Top = 8
        Width = 118
        Height = 16
        Caption = 'PRE'#199'O DE VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 653
        Top = 4
        Width = 18
        Height = 10
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 673
        Top = 4
        Width = 54
        Height = 10
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 638
        Top = 14
        Width = 33
        Height = 10
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 673
        Top = 14
        Width = 24
        Height = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 485
        Top = 23
        Width = 31
        Height = 14
        Caption = 'Dolar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlDolar: TRLLabel
        Left = 518
        Top = 23
        Width = 34
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 66
        Width = 742
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
      object rlFilial: TRLLabel
        Left = 63
        Top = 38
        Width = 23
        Height = 14
        Caption = 'Filial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 35
        Top = 38
        Width = 26
        Height = 14
        Caption = 'Filial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 2
        Top = 24
        Width = 59
        Height = 14
        Caption = 'Refer'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlReferencia: TRLLabel
        Left = 63
        Top = 24
        Width = 59
        Height = 14
        Caption = 'Refer'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 438
        Top = 39
        Width = 78
        Height = 14
        Alignment = taRightJustify
        Caption = 'Data do C'#225'lculo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlData: TRLLabel
        Left = 518
        Top = 39
        Width = 31
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel30: TRLLabel
        Left = 6
        Top = 52
        Width = 55
        Height = 14
        Alignment = taRightJustify
        Caption = 'Descri'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlDescricao: TRLLabel
        Left = 63
        Top = 52
        Width = 23
        Height = 14
        Caption = 'Filial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLSubDetail3: TRLSubDetail
      Left = 26
      Top = 98
      Width = 742
      Height = 585
      DataSource = DMCadCusto.dsCustoImp
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 105
        Width = 742
        Height = 225
        DataSource = DMCadCusto.dsmResumo
        object RLGroup1: TRLGroup
          Left = 0
          Top = 0
          Width = 742
          Height = 185
          DataFields = 'CodTipo'
          object RLBand5: TRLBand
            Left = 0
            Top = 0
            Width = 742
            Height = 30
            BandType = btHeader
            BeforePrint = RLBand5BeforePrint
            object RLDBText11: TRLDBText
              Left = 8
              Top = 8
              Width = 69
              Height = 16
              DataField = 'NomeTipo'
              DataSource = DMCadCusto.dsmResumo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object RLLabel16: TRLLabel
              Left = 456
              Top = 13
              Width = 27
              Height = 11
              Alignment = taRightJustify
              Caption = 'REAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object RLLabel17: TRLLabel
              Left = 576
              Top = 13
              Width = 35
              Height = 11
              Alignment = taRightJustify
              Caption = 'DOLAR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
          end
          object RLBand6: TRLBand
            Left = 0
            Top = 30
            Width = 742
            Height = 20
            object RLDBText12: TRLDBText
              Left = 8
              Top = 3
              Width = 30
              Height = 14
              DataField = 'Nome'
              DataSource = DMCadCusto.dsmResumo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText13: TRLDBText
              Left = 458
              Top = 3
              Width = 27
              Height = 14
              DataField = 'VlrMI'
              DataSource = DMCadCusto.dsmResumo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText14: TRLDBText
              Left = 580
              Top = 3
              Width = 35
              Height = 14
              DataField = 'VlrExp'
              DataSource = DMCadCusto.dsmResumo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDraw4: TRLDraw
              Left = 0
              Top = 18
              Width = 742
              Height = 2
              Align = faBottom
              DrawKind = dkLine
              Pen.Style = psDot
            end
          end
          object RLBand7: TRLBand
            Left = 0
            Top = 50
            Width = 742
            Height = 60
            BandType = btFooter
            object RLLabel18: TRLLabel
              Left = 328
              Top = 8
              Width = 71
              Height = 14
              Alignment = taRightJustify
              Caption = 'Totais =====>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBResult3: TRLDBResult
              Left = 426
              Top = 8
              Width = 59
              Height = 14
              Alignment = taRightJustify
              DataField = 'VlrMI'
              DataSource = DMCadCusto.dsmResumo
              DisplayMask = '###,###,##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Info = riSum
              ParentFont = False
              ResetAfterPrint = True
            end
            object RLDBResult4: TRLDBResult
              Left = 547
              Top = 8
              Width = 67
              Height = 14
              Alignment = taRightJustify
              DataField = 'VlrExp'
              DataSource = DMCadCusto.dsmResumo
              DisplayMask = '###,###,##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Info = riSum
              ParentFont = False
              ResetAfterPrint = True
            end
            object RLLabel28: TRLLabel
              Left = 280
              Top = 40
              Width = 119
              Height = 14
              Alignment = taRightJustify
              Caption = 'COEF. DE MARK UP ==>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText15: TRLDBText
              Left = 440
              Top = 40
              Width = 46
              Height = 14
              Alignment = taRightJustify
              DataField = 'MARKUP'
              DataSource = DMCadCusto.dsCustoImp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText16: TRLDBText
              Left = 546
              Top = 40
              Width = 65
              Height = 14
              Alignment = taRightJustify
              DataField = 'MARKUPEXP'
              DataSource = DMCadCusto.dsCustoImp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
      end
      object RLBand8: TRLBand
        Left = 0
        Top = 330
        Width = 742
        Height = 51
        BandType = btSummary
        BeforePrint = RLBand8BeforePrint
        object RLDraw7: TRLDraw
          Left = 152
          Top = 23
          Width = 385
          Height = 22
        end
        object RLDraw6: TRLDraw
          Left = 152
          Top = 2
          Width = 385
          Height = 22
        end
        object RLDraw5: TRLDraw
          Left = 8
          Top = 23
          Width = 145
          Height = 22
        end
        object RLLabel19: TRLLabel
          Left = 65
          Top = 28
          Width = 35
          Height = 12
          Caption = 'CUSTO'
        end
        object RLLabel20: TRLLabel
          Left = 220
          Top = 8
          Width = 27
          Height = 12
          Caption = 'REAL'
        end
        object RLLabel23: TRLLabel
          Left = 347
          Top = 8
          Width = 35
          Height = 12
          Caption = 'DOLAR'
        end
        object RLLabel24: TRLLabel
          Left = 448
          Top = 8
          Width = 64
          Height = 12
          Caption = 'EXPORTA'#199#195'O'
        end
        object RLLabel25: TRLLabel
          Left = 220
          Top = 28
          Width = 27
          Height = 12
          Alignment = taRightJustify
          Caption = 'REAL'
        end
        object RLLabel26: TRLLabel
          Left = 347
          Top = 28
          Width = 35
          Height = 12
          Alignment = taRightJustify
          Caption = 'DOLAR'
        end
        object RLLabel27: TRLLabel
          Left = 448
          Top = 28
          Width = 64
          Height = 12
          Alignment = taRightJustify
          Caption = 'EXPORTA'#199#195'O'
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 0
        Width = 742
        Height = 105
        DataSource = DMCadCusto.dsCustoImp_Mat
        object RLBand2: TRLBand
          Left = 0
          Top = 32
          Width = 742
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLDBText1: TRLDBText
            Left = 681
            Top = 2
            Width = 59
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRCUSTODOLAR'
            DataSource = DMCadCusto.dsCustoImp_Mat
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 623
            Top = 2
            Width = 57
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRCUSTO'
            DataSource = DMCadCusto.dsCustoImp_Mat
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 564
            Top = 2
            Width = 58
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRLIQUIDO'
            DataSource = DMCadCusto.dsCustoImp_Mat
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 533
            Top = 2
            Width = 30
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PERCIPI'
            DataSource = DMCadCusto.dsCustoImp_Mat
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 502
            Top = 2
            Width = 30
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PERCICMS'
            DataSource = DMCadCusto.dsCustoImp_Mat
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 447
            Top = 2
            Width = 53
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRUNITARIO'
            DataSource = DMCadCusto.dsCustoImp_Mat
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 384
            Top = 2
            Width = 62
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CONSUMO'
            DataSource = DMCadCusto.dsCustoImp_Mat
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 358
            Top = 2
            Width = 24
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'UNIDADE'
            DataSource = DMCadCusto.dsCustoImp_Mat
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 36
            Top = 2
            Width = 213
            Height = 12
            AutoSize = False
            DataField = 'NOME_MATERIAL'
            DataSource = DMCadCusto.dsCustoImp_Mat
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 1
            Top = 2
            Width = 34
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'ID_MATERIAL'
            DataSource = DMCadCusto.dsCustoImp_Mat
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText17: TRLDBText
            Left = 250
            Top = 2
            Width = 107
            Height = 12
            AutoSize = False
            DataField = 'NOME_COR'
            DataSource = DMCadCusto.dsCustoImp_Mat
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 32
          BandType = btTitle
          object RLLabel6: TRLLabel
            Left = 2
            Top = 16
            Width = 32
            Height = 12
            Caption = 'C'#243'digo'
          end
          object RLLabel7: TRLLabel
            Left = 37
            Top = 16
            Width = 35
            Height = 12
            Caption = 'Material'
          end
          object RLLabel8: TRLLabel
            Left = 359
            Top = 16
            Width = 25
            Height = 12
            Caption = 'Unid.'
          end
          object RLLabel9: TRLLabel
            Left = 400
            Top = 16
            Width = 43
            Height = 12
            Caption = 'Consumo'
          end
          object RLLabel10: TRLLabel
            Left = 461
            Top = 16
            Width = 37
            Height = 12
            Caption = 'Vlr.Unit.'
          end
          object RLLabel11: TRLLabel
            Left = 504
            Top = 16
            Width = 26
            Height = 12
            Caption = 'ICMS'
          end
          object RLLabel12: TRLLabel
            Left = 540
            Top = 16
            Width = 15
            Height = 12
            Caption = 'IPI'
          end
          object RLLabel13: TRLLabel
            Left = 584
            Top = 16
            Width = 33
            Height = 12
            Caption = 'L'#237'quido'
          end
          object RLMemo1: TRLMemo
            Left = 690
            Top = 4
            Width = 50
            Height = 24
            Alignment = taRightJustify
            Behavior = [beSiteExpander]
            Lines.Strings = (
              'Custo'
              'Dolar')
          end
          object RLLabel14: TRLLabel
            Left = 643
            Top = 16
            Width = 28
            Height = 12
            Caption = 'Custo'
          end
          object RLDraw2: TRLDraw
            Left = 0
            Top = 30
            Width = 742
            Height = 2
            Align = faBottom
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLLabel29: TRLLabel
            Left = 252
            Top = 17
            Width = 18
            Height = 12
            Caption = 'Cor'
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 49
          Width = 742
          Height = 20
          BandType = btFooter
          PageBreaking = pbAfterPrint
          object RLLabel15: TRLLabel
            Left = 566
            Top = 4
            Width = 26
            Height = 12
            Caption = 'Total:'
          end
          object RLDraw3: TRLDraw
            Left = 607
            Top = 0
            Width = 124
            Height = 4
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBResult1: TRLDBResult
            Left = 598
            Top = 4
            Width = 81
            Height = 12
            Alignment = taRightJustify
            DataField = 'VLRCUSTO'
            DataSource = DMCadCusto.dsCustoImp_Mat
            DisplayMask = '###,###,##0.000'
            Info = riSum
            ResetAfterPrint = True
          end
          object RLDBResult2: TRLDBResult
            Left = 681
            Top = 4
            Width = 59
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRCUSTODOLAR'
            DataSource = DMCadCusto.dsCustoImp_Mat
            DisplayMask = '###,###,##0.000'
            Info = riSum
            ResetAfterPrint = True
          end
        end
      end
    end
  end
end
