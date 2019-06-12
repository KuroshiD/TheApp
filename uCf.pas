unit uCf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmCf = class(TForm)
    Label1: TLabel;
    txtTemp: TEdit;
    Button1: TButton;
    pnlResult: TPanel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCf: TFrmCf;

implementation

{$R *.dfm}

procedure TFrmCf.Button1Click(Sender: TObject);
var
  temp, tempf: real;
begin
  temp:= StrToFloat(txtTemp.Text);
  tempf:= (temp * 9/5) + 32;
  pnlResult.Caption:= FloatToStr(tempf) + ' ºF';
end;

procedure TFrmCf.Button2Click(Sender: TObject);
begin
  txtTemp.Clear;
  pnlResult.Caption:= 'Resultado aqui';
end;

end.
