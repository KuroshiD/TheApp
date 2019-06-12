object FrmImc: TFrmImc
  Left = 0
  Top = 0
  Caption = 'C'#225'lculo de IMC'
  ClientHeight = 243
  ClientWidth = 527
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
    Left = 32
    Top = 45
    Width = 29
    Height = 13
    Caption = 'Altura'
  end
  object Label2: TLabel
    Left = 168
    Top = 45
    Width = 23
    Height = 13
    Caption = 'Peso'
  end
  object Label3: TLabel
    Left = 336
    Top = 45
    Width = 40
    Height = 13
    Caption = 'Seu IMC'
  end
  object edtAltura: TEdit
    Left = 32
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtPeso: TEdit
    Left = 168
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object PnlResultado: TPanel
    Left = 336
    Top = 64
    Width = 105
    Height = 21
    TabOrder = 2
  end
  object btnCalc: TButton
    Left = 295
    Top = 64
    Width = 35
    Height = 21
    Caption = '='
    TabOrder = 3
    OnClick = btnCalcClick
  end
  object ListBox1: TListBox
    Left = 32
    Top = 104
    Width = 257
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      'Abaixo de 17: Muito abaixo do peso'
      'Entre 17 e 18,49: Abaixo do peso'
      'Entre 18,5 e 24,99: Peso normal'
      'Entre 25 e 29,99: Acima do peso'
      'Entre 30 e 34,99: Obesidade I'
      'Entre 35 e 39,99: Obesidade II (severa)'
      'Acima de 40: Obesidade III (m'#243'rbida)')
    TabOrder = 4
  end
end
