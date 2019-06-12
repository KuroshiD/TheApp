unit uEpc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmEpc = class(TForm)
    Label1: TLabel;
    txtMassa: TEdit;
    Label2: TLabel;
    txtVel: TEdit;
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
  FrmEpc: TFrmEpc;

implementation

{$R *.dfm}

procedure TFrmEpc.Button1Click(Sender: TObject);
var
  massa, velocidade, epc: Real;
begin
  massa:= StrToFloat(txtMassa.Text);
  velocidade:= StrToFloat(txtVel.Text);
  epc:= (massa * (velocidade * velocidade))/2;
  pnlResult.Caption:= FloatToStr(epc) + ' J';
end;

procedure TFrmEpc.Button2Click(Sender: TObject);
begin
  txtMassa.Clear;
  txtVel.Clear;
  pnlResult.Caption:= '';
end;

end.
