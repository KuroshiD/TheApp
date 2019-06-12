object FrmVolpt: TFrmVolpt
  Left = 0
  Top = 0
  Caption = 'Volume de prisma triangular'
  ClientHeight = 383
  ClientWidth = 560
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
    Top = 56
    Width = 111
    Height = 13
    Caption = 'Informe o comprimento'
  end
  object Label2: TLabel
    Left = 64
    Top = 112
    Width = 111
    Height = 13
    Caption = 'Informe a largura'
  end
  object Label3: TLabel
    Left = 64
    Top = 168
    Width = 78
    Height = 13
    Caption = 'Informe a altura'
  end
  object txtComprimento: TEdit
    Left = 64
    Top = 75
    Width = 111
    Height = 21
    TabOrder = 0
  end
  object txtLargura: TEdit
    Left = 64
    Top = 131
    Width = 111
    Height = 21
    TabOrder = 1
  end
  object txtAltura: TEdit
    Left = 64
    Top = 187
    Width = 111
    Height = 21
    TabOrder = 2
  end
  object btnCalc: TButton
    Left = 64
    Top = 224
    Width = 111
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcClick
  end
  object btnLimpar: TButton
    Left = 64
    Top = 255
    Width = 111
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = btnLimparClick
  end
  object Panel1: TPanel
    Left = 240
    Top = 75
    Width = 185
    Height = 41
    Caption = 'V=([a.b].c)/2'
    TabOrder = 5
  end
  object pnlResult: TPanel
    Left = 240
    Top = 131
    Width = 185
    Height = 41
    TabOrder = 6
  end
end
