unit uMilekm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmMilekm = class(TForm)
    Label1: TLabel;
    txtMilhas: TEdit;
    Button1: TButton;
    pnlResult: TPanel;
    Button2: TButton;
    Label2: TLabel;
    txtKm: TEdit;
    pnlResult2: TPanel;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMilekm: TFrmMilekm;

implementation

{$R *.dfm}

procedure TFrmMilekm.Button1Click(Sender: TObject);
var
  milhas, km: real;
begin
  milhas:= StrToFloat(txtMilhas.Text);
  km:= milhas * 1.60934;
  pnlResult.Caption:= FloatToStr(km) + ' KM';
end;

procedure TFrmMilekm.Button2Click(Sender: TObject);
begin
  txtMilhas.Clear;
  pnlResult.Caption:= 'Distância em KM aqui';
end;

procedure TFrmMilekm.Button3Click(Sender: TObject);
var
  km, milhas: real;
begin
  km:= StrToFloat(txtKm.Text);
  milhas:= km * 0.621371;
  pnlResult2.Caption:= FloatToStr(milhas) + ' Milhas';
end;

procedure TFrmMilekm.Button4Click(Sender: TObject);
begin
  txtKm.Clear;
  pnlResult2.Caption:= 'Distância em Milhas aqui';
end;

end.
