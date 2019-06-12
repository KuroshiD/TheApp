unit uEpg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmEpg = class(TForm)
    Label1: TLabel;
    txtMassa: TEdit;
    Label2: TLabel;
    txtGravidade: TEdit;
    Button1: TButton;
    txtAltura: TEdit;
    lb: TLabel;
    Button2: TButton;
    pnlResult: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEpg: TFrmEpg;

implementation

{$R *.dfm}

procedure TFrmEpg.Button1Click(Sender: TObject);
var
  massa, gravidade, altura, epg: Real;
begin
  massa:= StrToFloat(txtMassa.Text);
  gravidade:= StrToFloat(txtGravidade.Text);
  altura:= StrToFloat(txtAltura.Text);
  epg:= massa * gravidade * altura;
  pnlResult.Caption:= FloatToStr(epg) + ' J';
end;

procedure TFrmEpg.Button2Click(Sender: TObject);
begin
  txtMassa.Clear;
  txtGravidade.Clear;
  txtAltura.Clear;
  pnlResult.Caption:= '';
end;

end.
