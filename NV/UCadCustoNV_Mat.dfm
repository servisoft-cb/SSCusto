object frmCadCustoNV_Mat: TfrmCadCustoNV_Mat
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
  object Label12: TLabel
    Left = 564
    Top = 185
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
    DataSource = DMCadCustoNV.dsCustoNV_Mat
    LookupField = 'ID_COR_COMBINACAO'
    LookupDisplay = 'NOME'
    LookupDisplayIndex = 3
    LookupSource = DMCadCustoNV.dsCorMat
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
    DataSource = DMCadCustoNV.dsCustoNV_Mat
    LookupField = 'UNIDADE'
    LookupDisplay = 'UNIDADE'
    LookupSource = DMCadCustoNV.dsUnidade
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 206
    Width = 676
    Height = 37
    Align = alBottom
    Color = clMoneyGreen
    TabOrder = 9
    object btnConfirmar: TNxButton
      Left = 233
      Top = 5
      Width = 96
      Height = 26
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TNxButton
      Left = 329
      Top = 5
      Width = 96
      Height = 26
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object DBEdit1: TDBEdit
    Left = 84
    Top = 85
    Width = 134
    Height = 21
    DataField = 'CONSUMO'
    DataSource = DMCadCustoNV.dsCustoNV_Mat
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 84
    Top = 107
    Width = 134
    Height = 21
    DataField = 'VLR_UNITARIO'
    DataSource = DMCadCustoNV.dsCustoNV_Mat
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 84
    Top = 129
    Width = 134
    Height = 21
    DataField = 'PERC_ICMS'
    DataSource = DMCadCustoNV.dsCustoNV_Mat
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 84
    Top = 151
    Width = 134
    Height = 21
    DataField = 'PERC_IPI'
    DataSource = DMCadCustoNV.dsCustoNV_Mat
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 524
    Top = 93
    Width = 134
    Height = 21
    TabStop = False
    Color = clMoneyGreen
    DataField = 'VLR_LIQUIDO'
    DataSource = DMCadCustoNV.dsCustoNV_Mat
    ReadOnly = True
    TabOrder = 7
  end
  object DBEdit6: TDBEdit
    Left = 524
    Top = 115
    Width = 134
    Height = 21
    TabStop = False
    Color = clMoneyGreen
    DataField = 'VLR_CUSTO'
    DataSource = DMCadCustoNV.dsCustoNV_Mat
    ReadOnly = True
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 589
    Top = 177
    Width = 69
    Height = 21
    TabStop = False
    Color = clMoneyGreen
    DataField = 'ITEM'
    DataSource = DMCadCustoNV.dsCustoNV_Mat
    ReadOnly = True
    TabOrder = 10
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
      DataSource = DMCadCustoNV.dsCustoNV_Mat
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
