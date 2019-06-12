object FrmEpg: TFrmEpg
  Left = 0
  Top = 0
  Caption = 'Energia potencial gravitacional'
  ClientHeight = 306
  ClientWidth = 542
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 40
    Width = 224
    Height = 20
    Caption = 'Informe a massa (kg)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tekton Pro Ext'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 64
    Top = 86
    Width = 224
    Height = 20
    Caption = 'Informe a gravidade (m/s'#178')'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tekton Pro Ext'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb: TLabel
    Left = 64
    Top = 132
    Width = 224
    Height = 20
    Caption = 'Informe a altura (m)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tekton Pro Ext'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtMassa: TEdit
    Left = 64
    Top = 59
    Width = 224
    Height = 28
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tekton Pro Ext'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object txtGravidade: TEdit
    Left = 64
    Top = 105
    Width = 224
    Height = 28
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tekton Pro Ext'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 64
    Top = 184
    Width = 224
    Height = 33
    Caption = 'Calcular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tekton Pro Ext'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object txtAltura: TEdit
    Left = 64
    Top = 150
    Width = 224
    Height = 28
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tekton Pro Ext'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object Button2: TButton
    Left = 64
    Top = 223
    Width = 224
    Height = 33
    Caption = 'Limpar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tekton Pro Ext'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object pnlResult: TPanel
    Left = 312
    Top = 105
    Width = 185
    Height = 73
    TabOrder = 5
  end
end
