unit uImc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmImc = class(TForm)
    edtAltura: TEdit;
    Label1: TLabel;
    edtPeso: TEdit;
    Label2: TLabel;
    PnlResultado: TPanel;
    Label3: TLabel;
    btnCalc: TButton;
    ListBox1: TListBox;
    procedure btnCalcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImc: TFrmImc;

implementation

{$R *.dfm}

procedure TFrmImc.btnCalcClick(Sender: TObject);
  var
    peso, altura, imc : real;
begin
  peso:= StrToFloat(edtPeso.Text);
  altura:= StrToFloat(edtAltura.Text);
  imc:= (peso)/(altura*2);
  PnlResultado.Caption:=FloatToStr(imc);
end;

end.
