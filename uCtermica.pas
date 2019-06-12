unit uCtermica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmCterm = class(TForm)
    Label1: TLabel;
    mbl: TLabel;
    txtMassa: TEdit;
    txtCe: TEdit;
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
  FrmCterm: TFrmCterm;

implementation

{$R *.dfm}

procedure TFrmCterm.Button1Click(Sender: TObject);
var
  massa, ce, C: Real;
begin
  massa:= StrToFloat(txtMassa.Text);
  ce:= StrToFloat(txtCe.Text);
  C:= massa * ce;
  pnlResult.Caption:= 'C= ' + FloatToStr(C) + ' cal/ºC';
end;

procedure TFrmCterm.Button2Click(Sender: TObject);
begin
  txtMassa.Clear;
  txtCe.Clear;
  pnlResult.Caption:= '';
end;

end.
