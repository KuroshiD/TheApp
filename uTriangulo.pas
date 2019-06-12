unit uTriangulo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmTriangulo = class(TForm)
    lblLado1: TLabel;
    lblLado2: TLabel;
    lblLado3: TLabel;
    edtLado1: TEdit;
    edtLado2: TEdit;
    edtLado3: TEdit;
    btnVerifica: TButton;
    mmResultado: TMemo;
    btnLimpar: TButton;
    procedure btnVerificaClick(Sender: TObject);
    procedure edtLado1KeyPress(Sender: TObject; var Key: Char);
    procedure edtLado2KeyPress(Sender: TObject; var Key: Char);
    procedure edtLado3KeyPress(Sender: TObject; var Key: Char);
    procedure mmResultadoKeyPress(Sender: TObject; var Key: Char);
    procedure edtLado1Change(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTriangulo: TfrmTriangulo;

implementation

{$R *.dfm}

procedure TfrmTriangulo.btnLimparClick(Sender: TObject);
begin
  edtLado1.Clear;
  edtLado2.Clear;
  edtLado3.Clear;
  mmResultado.Clear;
end;

procedure TfrmTriangulo.btnVerificaClick(Sender: TObject);
var
  lado1, lado2, lado3 : Integer;
begin
  //Contribuição do Christofer
  try
    mmResultado.Enabled := Enabled;
    lado1 := StrToInt(edtLado1.Text);
    lado2 := StrToInt(edtLado2.Text);
    lado3 := StrToInt(edtLado3.Text);

    if(lado1 <= lado2 + lado3) and (lado2 <= lado1 + lado3) and (lado3 <= lado1 + lado2) then
    begin
      if(lado1 = lado2) and (lado2 = lado3) then
        mmResultado.Text := 'Triângulo equilátero'
      else if (lado1 = lado2) or (lado2 = lado3) or (lado1 =  lado3) then
        mmResultado.Text := 'Triângulo isósceles'
      else
        mmResultado.Text := 'Triângulo escaleno'
    end
      else
        mmResultado.Text := 'Não é triângulo!';
    // Contribuição do Renan Dias
    except
    on EConvertError do
       ShowMessage('Por favor, preencha todos os campos');
   end;
  end;

procedure TfrmTriangulo.edtLado1Change(Sender: TObject);
begin
  if (edtLado1.Text = '') then
    mmResultado.Text := 'Este campo não pode ficar vazio';
end;

procedure TfrmTriangulo.edtLado1KeyPress(Sender: TObject; var Key: Char);
begin
  //Contribuição do Christofer
  if not ((key in ['0'..'9',#8])) then
  key := #0;
end;

procedure TfrmTriangulo.edtLado2KeyPress(Sender: TObject; var Key: Char);
begin
 //Contribuição do Christofer
  if not ((key in ['0'..'9',#8])) then
  key := #0;
end;

procedure TfrmTriangulo.edtLado3KeyPress(Sender: TObject; var Key: Char);
begin
  //Contribuição do Christofer
  if not ((key in ['0'..'9',#8])) then
  key := #0;
end;

procedure TfrmTriangulo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmTriangulo.FormDestroy(Sender: TObject);
begin
  frmTriangulo := nil;
end;

procedure TfrmTriangulo.mmResultadoKeyPress(Sender: TObject; var Key: Char);
begin
  //Contribuição do Christofer
  if not ((key in ['0'..'9',#8])) then
  key := #0;
end;

end.
