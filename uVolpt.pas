unit uVolpt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmVolpt = class(TForm)
    Label1: TLabel;
    txtComprimento: TEdit;
    Label2: TLabel;
    txtLargura: TEdit;
    Label3: TLabel;
    txtAltura: TEdit;
    btnCalc: TButton;
    btnLimpar: TButton;
    Panel1: TPanel;
    pnlResult: TPanel;
    procedure btnCalcClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVolpt: TFrmVolpt;

implementation

{$R *.dfm}

procedure TFrmVolpt.btnCalcClick(Sender: TObject);
var
  v, c, l, a: Real;
begin
  c:= StrToFloat(txtComprimento.Text);
  l:= StrToFloat(txtLargura.Text);
  a:= StrToFloat(txtAltura.Text);
  v:= ((c*l) * a)/2;
  pnlResult.Caption:= FloatToStr(v) + ' cm³';
end;

procedure TFrmVolpt.btnLimparClick(Sender: TObject);
begin
  txtComprimento.Clear;
  txtLargura.Clear;
  txtAltura.Clear;
  pnlResult.Caption:= '';
end;

end.
