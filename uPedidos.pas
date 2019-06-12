unit uPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TFrmPedidos = class(TForm)
    DataSource3: TDataSource;
    qPedidos: TFDQuery;
    qPedidosidPedidos: TFDAutoIncField;
    qPedidosProdutos_codigo: TLongWordField;
    qPedidosClientes_idClientes: TLongWordField;
    qPedidosdataPedido: TDateTimeField;
    qPedidosvalorPedido: TBCDField;
    qPedidossituacao: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedidos: TFrmPedidos;

implementation

{$R *.dfm}

uses uBancodados;

procedure TFrmPedidos.FormCreate(Sender: TObject);
begin
  qPedidos.Active:= True;
  qPedidos.Open();
end;

procedure TFrmPedidos.FormDestroy(Sender: TObject);
begin
 FrmPedidos := nil;
end;

end.
