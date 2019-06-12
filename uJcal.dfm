object FrmJcal: TFrmJcal
  Left = 0
  Top = 0
  Caption = 'Joule - Cal'
  ClientHeight = 425
  ClientWidth = 625
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
    Top = 48
    Width = 121
    Height = 13
    Caption = 'Energia em Joules'
  end
  object Label2: TLabel
    Left = 64
    Top = 94
    Width = 121
    Height = 13
    Caption = 'Energia em calorias'
  end
  object txtJ: TEdit
    Left = 64
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object txtCal: TEdit
    Left = 64
    Top = 113
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 191
    Top = 67
    Width = 121
    Height = 21
    Caption = 'Calcular Cal'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 64
    Top = 163
    Width = 248
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 191
    Top = 113
    Width = 121
    Height = 21
    Caption = 'Calcular J'
    TabOrder = 4
    OnClick = Button3Click
  end
end
