object FrmMilekm: TFrmMilekm
  Left = 0
  Top = 0
  Caption = 'Milhas - KM'
  ClientHeight = 307
  ClientWidth = 415
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
    Left = 24
    Top = 40
    Width = 349
    Height = 27
    Caption = 'Informe a dist'#226'ncia (Milhas)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 152
    Width = 349
    Height = 27
    Caption = 'Informe a dist'#226'ncia (KM)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object txtMilhas: TEdit
    Left = 24
    Top = 73
    Width = 233
    Height = 28
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 263
    Top = 73
    Width = 110
    Height = 28
    Caption = 'Converter'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object pnlResult: TPanel
    Left = 24
    Top = 107
    Width = 233
    Height = 28
    Caption = 'Dist'#226'ncia em KM aqui'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 263
    Top = 107
    Width = 110
    Height = 28
    Caption = 'Limpar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object txtKm: TEdit
    Left = 24
    Top = 185
    Width = 233
    Height = 28
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 4
  end
  object pnlResult2: TPanel
    Left = 24
    Top = 219
    Width = 233
    Height = 28
    Caption = 'Dist'#226'ncia em Milhas aqui'
    TabOrder = 5
  end
  object Button3: TButton
    Left = 263
    Top = 185
    Width = 110
    Height = 28
    Caption = 'Converter'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 263
    Top = 219
    Width = 110
    Height = 28
    Caption = 'Limpar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 7
    OnClick = Button4Click
  end
end
