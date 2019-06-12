unit uVolcone;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmCone = class(TForm)
    Label1: TLabel;
    txtAltura: TEdit;
    Label2: TLabel;
    txtRaio: TEdit;
    btnCalc: TButton;
    pnlResult: TPanel;
    btnLimpar: TButton;
    procedure btnCalcClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCone: TFrmCone;

implementation

{$R *.dfm}

procedure TFrmCone.btnCalcClick(Sender: TObject);
var
  altura, raio, volume: real;
begin
  altura:= StrToFloat(txtAltura.Text);
  raio:= StrToFloat(txtRaio.Text);
  volume:= (3.14 * (raio*raio) * altura)/3;
  pnlResult.Caption:= FloatToStr(volume) + ' cm³';
end;

procedure TFrmCone.btnLimparClick(Sender: TObject);
begin
  txtAltura.Clear;
  txtRaio.Clear;
  pnlResult.Caption:= '';
end;

end.
