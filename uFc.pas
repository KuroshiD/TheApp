unit uFc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmFc = class(TForm)
    Label1: TLabel;
    txtTemp: TEdit;
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
  FrmFc: TFrmFc;

implementation

{$R *.dfm}

procedure TFrmFc.Button1Click(Sender: TObject);
var
  temp, tempc: real;
begin
  temp:= StrToFloat(txtTemp.Text);
  tempc:= (temp - 32) * 5/9;
  pnlResult.Caption:= FloatToStr(tempc) + ' ºC';
end;

procedure TFrmFc.Button2Click(Sender: TObject);
begin
  txtTemp.Clear;
  pnlResult.Caption:= 'Resultado aqui';
end;

end.
