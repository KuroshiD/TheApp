object FrmCone: TFrmCone
  Left = 0
  Top = 0
  Caption = 'Volume de cone'
  ClientHeight = 424
  ClientWidth = 616
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
    Left = 232
    Top = 136
    Width = 78
    Height = 13
    Caption = 'Informe a altura'
  end
  object Label2: TLabel
    Left = 96
    Top = 136
    Width = 68
    Height = 13
    Caption = 'Informe o raio'
  end
  object txtAltura: TEdit
    Left = 232
    Top = 155
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object txtRaio: TEdit
    Left = 96
    Top = 155
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnCalc: TButton
    Left = 96
    Top = 182
    Width = 121
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcClick
  end
  object pnlResult: TPanel
    Left = 96
    Top = 229
    Width = 257
    Height = 36
    TabOrder = 3
  end
  object btnLimpar: TButton
    Left = 232
    Top = 182
    Width = 121
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = btnLimparClick
  end
end
