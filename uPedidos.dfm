object FrmPedidos: TFrmPedidos
  Left = 0
  Top = 0
  Caption = 'Pedidos'
  ClientHeight = 419
  ClientWidth = 645
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
    Left = 88
    Top = 13
    Width = 60
    Height = 13
    Caption = 'Id do pedido'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 88
    Top = 56
    Width = 89
    Height = 13
    Caption = 'C'#243'digo do produto'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 88
    Top = 96
    Width = 82
    Height = 13
    Caption = 'C'#243'digo do cliente'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 88
    Top = 136
    Width = 73
    Height = 13
    Caption = 'Data do pedido'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 88
    Top = 176
    Width = 74
    Height = 13
    Caption = 'Valor do pedido'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 88
    Top = 216
    Width = 41
    Height = 13
    Caption = 'Situa'#231#227'o'
    FocusControl = DBEdit6
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 32
    Width = 134
    Height = 21
    DataField = 'idPedidos'
    DataSource = DataSource3
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 88
    Top = 72
    Width = 134
    Height = 21
    DataField = 'Produtos_codigo'
    DataSource = DataSource3
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 88
    Top = 112
    Width = 134
    Height = 21
    DataField = 'Clientes_idClientes'
    DataSource = DataSource3
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 88
    Top = 152
    Width = 238
    Height = 21
    DataField = 'dataPedido'
    DataSource = DataSource3
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 88
    Top = 192
    Width = 147
    Height = 21
    DataField = 'valorPedido'
    DataSource = DataSource3
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 88
    Top = 232
    Width = 108
    Height = 21
    DataField = 'situacao'
    DataSource = DataSource3
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 88
    Top = 272
    Width = 320
    Height = 25
    DataSource = DataSource3
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 88
    Top = 303
    Width = 320
    Height = 97
    DataSource = DataSource3
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource3: TDataSource
    DataSet = qPedidos
    Left = 536
    Top = 24
  end
  object qPedidos: TFDQuery
    Connection = DataModule1.Conexao
    SQL.Strings = (
      'select * from pedidos')
    Left = 464
    Top = 24
    object qPedidosidPedidos: TFDAutoIncField
      FieldName = 'idPedidos'
      Origin = 'idPedidos'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qPedidosProdutos_codigo: TLongWordField
      FieldName = 'Produtos_codigo'
      Origin = 'Produtos_codigo'
      Required = True
    end
    object qPedidosClientes_idClientes: TLongWordField
      FieldName = 'Clientes_idClientes'
      Origin = 'Clientes_idClientes'
      Required = True
    end
    object qPedidosdataPedido: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dataPedido'
      Origin = 'dataPedido'
    end
    object qPedidosvalorPedido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valorPedido'
      Origin = 'valorPedido'
      Precision = 10
      Size = 2
    end
    object qPedidossituacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'situacao'
      Origin = 'situacao'
      Size = 8
    end
  end
end
