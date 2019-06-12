unit uProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, FireDAC.Comp.DataSet,
  Vcl.ExtCtrls, FireDAC.Comp.Client;

type
  TFrmProdutos = class(TForm)
    qProdutos: TFDQuery;
    qProdutoscodigo: TFDAutoIncField;
    qProdutosdescricao: TStringField;
    qProdutosembalagem: TStringField;
    qProdutospreco: TBCDField;
    qProdutosqtde_estoque: TBCDField;
    qProdutoscategoria: TStringField;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource2: TDataSource;
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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutos: TFrmProdutos;

implementation

{$R *.dfm}

uses uBancodados, uCadastro;

procedure TFrmProdutos.FormCreate(Sender: TObject);
begin
  qProdutos.Active:= True;
  qProdutos.Open();
end;

procedure TFrmProdutos.FormDestroy(Sender: TObject);
begin
   FrmCadClientes := nil;
end;

end.
