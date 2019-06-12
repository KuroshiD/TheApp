unit uJcal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmJcal = class(TForm)
    Label1: TLabel;
    txtJ: TEdit;
    Label2: TLabel;
    txtCal: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmJcal: TFrmJcal;

implementation

{$R *.dfm}

procedure TFrmJcal.Button1Click(Sender: TObject);
var
  j, c: Real;
begin
  j:= StrToFloat(txtJ.Text);
  c:= j * 0.238846;
  txtCal.Text:= FloatToStr(c) + ' Cal';
end;

procedure TFrmJcal.Button2Click(Sender: TObject);
begin
  txtJ.Clear;
  txtCal.Clear;
end;

procedure TFrmJcal.Button3Click(Sender: TObject);
var
  c, j: Real;
begin
  c:= StrToFloat(txtCal.Text);
  j:= c * 4.1868;
  txtJ.Text:= FloatToStr(j);
end;

end.
