object frmCadCusto_Mat: TfrmCadCusto_Mat
  Left = 205
  Top = 166
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Mov. Couros Item'
  ClientHeight = 243
  ClientWidth = 676
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 60
    Top = 48
    Width = 19
    Height = 13
    Caption = 'Cor:'
  end
  object Label10: TLabel
    Left = 36
    Top = 70
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Unidade:'
  end
  object Label3: TLabel
    Left = 32
    Top = 93
    Width = 47
    Height = 13
    Caption = 'Consumo:'
    FocusControl = DBEdit1
  end
  object Label4: TLabel
    Left = 22
    Top = 115
    Width = 57
    Height = 13
    Caption = 'Vlr. Unit'#225'rio:'
    FocusControl = DBEdit2
  end
  object Label5: TLabel
    Left = 39
    Top = 137
    Width = 40
    Height = 13
    Caption = '% ICMS:'
    FocusControl = DBEdit3
  end
  object Label6: TLabel
    Left = 52
    Top = 159
    Width = 27
    Height = 13
    Caption = '% IPI:'
    FocusControl = DBEdit4
  end
  object Label7: TLabel
    Left = 466
    Top = 101
    Width = 57
    Height = 13
    Caption = 'Vlr. L'#237'quido:'
    FocusControl = DBEdit5
  end
  object Label8: TLabel
    Left = 475
    Top = 123
    Width = 48
    Height = 13
    Caption = 'Vlr. Custo:'
    FocusControl = DBEdit6
  end
  object Label9: TLabel
    Left = 447
    Top = 145
    Width = 76
    Height = 13
    Caption = 'Vlr. Custo Dolar:'
    FocusControl = DBEdit7
  end
  object Label11: TLabel
    Left = 48
    Top = 181
    Width = 31
    Height = 13
    Caption = 'Couro:'
    FocusControl = DBEdit4
  end
  object Label12: TLabel
    Left = 564
    Top = 193
    Width = 23
    Height = 13
    Caption = 'Item:'
    FocusControl = DBEdit8
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 84
    Top = 40
    Width = 353
    Height = 21
    DropDownCount = 8
    DataField = 'ID_COR'
    DataSource = DMCadCusto.dsCusto_Mat
    LookupField = 'ID_COR_COMBINACAO'
    LookupDisplay = 'NOME'
    LookupDisplayIndex = 3
    LookupSource = DMCadCusto.dsCorMat
    TabOrder = 1
    OnExit = RxDBLookupCombo2Exit
  end
  object RxDBLookupCombo7: TRxDBLookupCombo
    Left = 84
    Top = 62
    Width = 74
    Height = 21
    DropDownCount = 8
    DataField = 'UNIDADE'
    DataSource = DMCadCusto.dsCusto_Mat
    LookupField = 'UNIDADE'
    LookupDisplay = 'UNIDADE'
    LookupSource = DMCadCusto.dsUnidade
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 206
    Width = 676
    Height = 37
    Align = alBottom
    Color = clMoneyGreen
    TabOrder = 11
    object SpeedButton7: TSpeedButton
      Left = 340
      Top = 5
      Width = 128
      Height = 28
      Hint = 'Cancela a inser'#231#227'o do produto'
      Caption = 'Cancela/Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        B2050000424DB205000000000000360400002800000012000000130000000100
        0800000000007C010000C30E0000C30E00000001000000000000000000007B00
        0000BD000000FF0000007B7B000000FF0000FFFF000000315A0008427300084A
        730000007B007B007B00084A7B0008527B0021527B00007B7B007B7B7B00004A
        840008528400105284002963840008528C00085A8C00185A8C0018638C002963
        8C0008529400185A9400296B9400316B94002973940031739400085A9C001863
        9C0018739C0029739C0031739C0031849C00005AA5002173A5003973A500297B
        A500186BAD00106BB500317BB5002984B5004A8CB500086BBD000073BD001073
        BD001873BD00217BBD004284BD00318CBD004A8CBD005294BD005A9CBD00BDBD
        BD001073C600007BC600217BC600428CC6004A8CC6005A9CC6000084CE000884
        CE00398CCE005A9CCE00639CCE001884D6002184D600088CD600108CD6004294
        D600399CD6004A9CD600529CD6005A9CD6005AA5D60063ADD6001884DE002184
        DE00188CDE001094DE001894DE003194DE00299CDE004AA5DE005AA5DE004AB5
        DE00189CE700219CE700429CE7005AA5E7005AADE70063ADE7006BB5E70021A5
        EF0029A5EF0031A5EF0063B5EF006BBDEF0029ADF70031ADF7006BBDF7000000
        FF00FF00FF0031B5FF0039B5FF0042B5FF0039BDFF0042BDFF0042C6FF004AC6
        FF006BC6FF004ACEFF0052CEFF0052D6FF005ADEFF0063E7FF0000FFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00393939393939
        3939393939393939393939690000396939393939393939393939393939396939
        0000396969393910101010101010101010693939000039696969000000000000
        0000000069693939000039396969007879797978797979696939393900003939
        3969697903030303030379691039393900003939396969697978797979786969
        1039393900003939393969696903030369696900103939390000393939390069
        6969797869697900103939390000393939390079036969696903790010393939
        0000393939390079796969696978790010393939000039393939007903696969
        6900000010393939000039393939007869697900696979001039393900003939
        3939006969697900696969693939393900003939396969697978790079003969
        6939393900003969696969000000000000393939696939390000396969693939
        3939393939393939393969390000393939393939393939393939393939393969
        00003939393939393939393939393939393939390000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton7Click
    end
    object BitBtn6: TBitBtn
      Left = 211
      Top = 5
      Width = 128
      Height = 28
      Hint = 'Confirma a inser'#231#227'o do produto'
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn6Click
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777777777700000007777777774F77777700000007777
        7777444F77777000000077777774444F777770000000700000444F44F7777000
        000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
        74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
        8777F07777774000000070FFFF00007777777000000070F88707077777777000
        000070FFFF007777777770000000700000077777777770000000777777777777
        777770000000}
    end
  end
  object DBEdit1: TDBEdit
    Left = 84
    Top = 85
    Width = 134
    Height = 21
    DataField = 'CONSUMO'
    DataSource = DMCadCusto.dsCusto_Mat
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 84
    Top = 107
    Width = 134
    Height = 21
    DataField = 'VLRUNITARIO'
    DataSource = DMCadCusto.dsCusto_Mat
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 84
    Top = 129
    Width = 134
    Height = 21
    DataField = 'PERCICMS'
    DataSource = DMCadCusto.dsCusto_Mat
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 84
    Top = 151
    Width = 134
    Height = 21
    DataField = 'PERCIPI'
    DataSource = DMCadCusto.dsCusto_Mat
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 524
    Top = 93
    Width = 134
    Height = 21
    TabStop = False
    Color = clMoneyGreen
    DataField = 'VLRLIQUIDO'
    DataSource = DMCadCusto.dsCusto_Mat
    ReadOnly = True
    TabOrder = 8
  end
  object DBEdit6: TDBEdit
    Left = 524
    Top = 115
    Width = 134
    Height = 21
    TabStop = False
    Color = clMoneyGreen
    DataField = 'VLRCUSTO'
    DataSource = DMCadCusto.dsCusto_Mat
    ReadOnly = True
    TabOrder = 9
  end
  object DBEdit7: TDBEdit
    Left = 524
    Top = 137
    Width = 134
    Height = 21
    TabStop = False
    Color = clMoneyGreen
    DataField = 'VLRCUSTODOLAR'
    DataSource = DMCadCusto.dsCusto_Mat
    ReadOnly = True
    TabOrder = 10
  end
  object RxDBComboBox1: TRxDBComboBox
    Left = 84
    Top = 173
    Width = 134
    Height = 21
    Style = csDropDownList
    DataField = 'COURO'
    DataSource = DMCadCusto.dsCusto_Mat
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 7
    Values.Strings = (
      'S'
      'N')
  end
  object DBEdit8: TDBEdit
    Left = 589
    Top = 185
    Width = 69
    Height = 21
    TabStop = False
    Color = clMoneyGreen
    DataField = 'ITEM'
    DataSource = DMCadCusto.dsCusto_Mat
    ReadOnly = True
    TabOrder = 12
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 676
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    Color = clMoneyGreen
    TabOrder = 0
    OnExit = Panel2Exit
    object Label1: TLabel
      Left = 25
      Top = 9
      Width = 54
      Height = 13
      Caption = 'ID Material:'
    end
    object Label13: TLabel
      Left = 504
      Top = 8
      Width = 56
      Height = 13
      Caption = 'F2 Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit12: TDBEdit
      Left = 84
      Top = 4
      Width = 86
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'ID_MATERIAL'
      DataSource = DMCadCusto.dsCusto_Mat
      ParentCtl3D = False
      TabOrder = 0
      OnExit = DBEdit12Exit
      OnKeyDown = DBEdit12KeyDown
    end
    object Edit1: TEdit
      Left = 169
      Top = 4
      Width = 302
      Height = 19
      TabStop = False
      Color = 13816530
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
      OnEnter = Edit1Enter
      OnKeyDown = Edit1KeyDown
    end
  end
end
