object FrmProdutos: TFrmProdutos
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 554
  ClientWidth = 681
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 32
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 96
    Top = 72
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 96
    Top = 112
    Width = 54
    Height = 13
    Caption = 'Embalagem'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 96
    Top = 152
    Width = 27
    Height = 13
    Caption = 'Pre'#231'o'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 96
    Top = 192
    Width = 113
    Height = 13
    Caption = 'Quantidade de estoque'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 96
    Top = 232
    Width = 47
    Height = 13
    Caption = 'Categoria'
    FocusControl = DBEdit6
  end
  object DBGrid1: TDBGrid
    Left = 96
    Top = 320
    Width = 409
    Height = 153
    DataSource = DataSource2
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 96
    Top = 283
    Width = 520
    Height = 25
    DataSource = DataSource2
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 96
    Top = 48
    Width = 134
    Height = 21
    DataField = 'codigo'
    DataSource = DataSource2
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 96
    Top = 88
    Width = 465
    Height = 21
    DataField = 'descricao'
    DataSource = DataSource2
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 96
    Top = 128
    Width = 264
    Height = 21
    DataField = 'embalagem'
    DataSource = DataSource2
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 96
    Top = 168
    Width = 147
    Height = 21
    DataField = 'preco'
    DataSource = DataSource2
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 96
    Top = 208
    Width = 147
    Height = 21
    DataField = 'qtde_estoque'
    DataSource = DataSource2
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 96
    Top = 248
    Width = 264
    Height = 21
    DataField = 'categoria'
    DataSource = DataSource2
    TabOrder = 7
  end
  object qProdutos: TFDQuery
    Connection = DataModule1.Conexao
    SQL.Strings = (
      'select * from produtos')
    Left = 496
    Top = 8
    object qProdutoscodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qProdutosdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
    object qProdutosembalagem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'embalagem'
      Origin = 'embalagem'
    end
    object qProdutospreco: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'preco'
      Origin = 'preco'
      Precision = 10
      Size = 2
    end
    object qProdutosqtde_estoque: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'qtde_estoque'
      Origin = 'qtde_estoque'
      Precision = 10
      Size = 2
    end
    object qProdutoscategoria: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'categoria'
      Origin = 'categoria'
    end
  end
  object DataSource2: TDataSource
    DataSet = qProdutos
    Left = 568
    Top = 16
  end
end
