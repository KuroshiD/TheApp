unit uEpe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, math;

type
  TFrmEpe = class(TForm)
    Label1: TLabel;
    txtK: TEdit;
    Label2: TLabel;
    txtX: TEdit;
    Button1: TButton;
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
  FrmEpe: TFrmEpe;

implementation

{$R *.dfm}

procedure TFrmEpe.Button1Click(Sender: TObject);
var
  k, x, epe, i: Real;
begin
  k:= StrToFloat(txtK.Text);
  x:= StrToFloat(txtX.Text);
  i:= x*x;
  epe:= (k*i)/2;
  pnlResult.Caption:= 'Energia potencial elástica ' + FloatToStr(epe) + ' J';
end;

procedure TFrmEpe.Button2Click(Sender: TObject);
begin
  txtK.Clear;
  txtX.Clear;
  pnlResult.Caption:= '';
end;

end.
