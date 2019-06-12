unit uQcalor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmQcalor = class(TForm)
    Label1: TLabel;
    txtMassa: TEdit;
    Label2: TLabel;
    txtCesp: TEdit;
    Label3: TLabel;
    txtVtemp: TEdit;
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
  FrmQcalor: TFrmQcalor;

implementation

{$R *.dfm}

procedure TFrmQcalor.Button1Click(Sender: TObject);
var
  qcalor, massa, cesp, vtemp: Real;
begin
  massa:= StrToFloat(txtMassa.Text);
  cesp:= StrToFloat(txtCesp.Text);
  vtemp:= StrToFloat(txtVtemp.Text);
  qcalor:= massa * cesp * vtemp;
  pnlResult.Caption:= FloatToStr(qcalor) + ' cal';
end;

procedure TFrmQcalor.Button2Click(Sender: TObject);
begin
  txtMassa.Clear;
  txtCesp.Clear;
  txtVtemp.Clear;
  pnlResult.Caption:='';
end;

end.
