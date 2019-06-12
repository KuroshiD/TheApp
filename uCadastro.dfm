object FrmCadClientes: TFrmCadClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de clientes'
  ClientHeight = 750
  ClientWidth = 961
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
    Left = 40
    Top = 48
    Width = 61
    Height = 13
    Caption = 'Id do Cliente'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 208
    Top = 48
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 41
    Top = 94
    Width = 96
    Height = 13
    Caption = 'Data de Nascimento'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 41
    Top = 140
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 41
    Top = 186
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 41
    Top = 232
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 40
    Top = 278
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 617
    Top = 278
    Width = 33
    Height = 13
    Caption = 'Estado'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 41
    Top = 324
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 207
    Top = 324
    Width = 33
    Height = 13
    Caption = 'Celular'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 40
    Top = 390
    Width = 24
    Height = 13
    Caption = 'Email'
    FocusControl = DBEdit11
  end
  object DBEdit1: TDBEdit
    Left = 40
    Top = 67
    Width = 134
    Height = 21
    DataField = 'idClientes'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 208
    Top = 67
    Width = 199
    Height = 21
    DataField = 'cpf'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 40
    Top = 113
    Width = 134
    Height = 21
    DataField = 'dataNascimento'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 40
    Top = 159
    Width = 785
    Height = 21
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 40
    Top = 205
    Width = 655
    Height = 21
    DataField = 'endereco'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 40
    Top = 251
    Width = 525
    Height = 21
    DataField = 'bairro'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 40
    Top = 297
    Width = 525
    Height = 21
    DataField = 'cidade'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 617
    Top = 297
    Width = 30
    Height = 21
    DataField = 'estado'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 40
    Top = 349
    Width = 161
    Height = 21
    DataField = 'telefone'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 207
    Top = 349
    Width = 160
    Height = 21
    DataField = 'celular'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit11: TDBEdit
    Left = 40
    Top = 409
    Width = 654
    Height = 21
    DataField = 'email'
    DataSource = DataSource1
    TabOrder = 10
  end
  object DBNavigator1: TDBNavigator
    Left = 112
    Top = 436
    Width = 650
    Height = 25
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBGrid1: TDBGrid
    Left = 112
    Top = 467
    Width = 650
    Height = 206
    DataSource = DataSource1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object qCliente: TFDQuery
    Connection = DataModule1.Conexao
    SQL.Strings = (
      'select * from clientes')
    Left = 480
    Top = 8
    object qClienteidClientes: TFDAutoIncField
      FieldName = 'idClientes'
      Origin = 'idClientes'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qClientecpf: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
    end
    object qClientedataNascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataNascimento'
      Origin = 'dataNascimento'
    end
    object qClientenome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object qClienteendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 50
    end
    object qClientebairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object qClientecidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 40
    end
    object qClienteestado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'estado'
      FixedChar = True
      Size = 2
    end
    object qClientetelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 12
    end
    object qClientecelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      Size = 12
    end
    object qClienteemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = qCliente
    Left = 560
    Top = 24
  end
end
