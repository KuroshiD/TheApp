object FrmCterm: TFrmCterm
  Left = 0
  Top = 0
  Caption = 'Calor especifico'
  ClientHeight = 411
  ClientWidth = 652
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
    Left = 72
    Top = 47
    Width = 136
    Height = 22
    Caption = 'Informe a massa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object mbl: TLabel
    Left = 72
    Top = 111
    Width = 212
    Height = 22
    Caption = 'Informe o calor espec'#237'fico'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtMassa: TEdit
    Left = 72
    Top = 75
    Width = 212
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object txtCe: TEdit
    Left = 72
    Top = 137
    Width = 212
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 72
    Top = 184
    Width = 212
    Height = 41
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 72
    Top = 231
    Width = 212
    Height = 42
    Caption = 'Limpar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object pnlResult: TPanel
    Left = 336
    Top = 111
    Width = 209
    Height = 89
    TabOrder = 4
  end
end
