unit uTabuadas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmTabuadas = class(TForm)
    lstResultado: TListBox;
    edtNumero: TEdit;
    lblNumero: TLabel;
    btnGerar: TButton;
    btnLimpar: TButton;
    procedure btnGerarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTabuadas: TFrmTabuadas;

implementation

{$R *.dfm}

procedure TFrmTabuadas.btnGerarClick(Sender: TObject);
var
  i: integer;
  begin
    lstResultado.Clear;
    for i:=0 to  1000 do
      lstResultado.Items.Add(edtNumero.Text + ' x ' + IntToStr(i)+ ' = ' +
        FloatToStr(StrToFloat(edtNumero.Text) * i));
  end;

procedure TFrmTabuadas.btnLimparClick(Sender: TObject);
begin
  edtNumero.Clear;
  lstResultado.Clear;
end;

procedure TFrmTabuadas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmTabuadas.FormDestroy(Sender: TObject);
begin
  FrmTabuadas := nil;
end;

end.
