unit uPrincipal;


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Winapi.ShellAPI, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ToolWin, Vcl.Buttons, Vcl.Imaging.jpeg;

type
  TFrmPrincipal = class(TForm)
    mmMenu: TMainMenu;
    Cadastros1: TMenuItem;
    Usurios1: TMenuItem;
    Produtos1: TMenuItem;
    Aplicaes1: TMenuItem;
    Clculodevolumes1: TMenuItem;
    ringulo1: TMenuItem;
    abuada1: TMenuItem;
    Utilitrios1: TMenuItem;
    Calendrio1: TMenuItem;
    Calculadora1: TMenuItem;
    Sair1: TMenuItem;
    Image1: TImage;
    ToolBar1: TToolBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Prisma1: TMenuItem;
    Cilindro1: TMenuItem;
    Cone1: TMenuItem;
    N1: TMenuItem;
    Navegador1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    ClculodeIMC1: TMenuItem;
    N8: TMenuItem;
    Prismabaseretangular1: TMenuItem;
    Prismabasetriangular1: TMenuItem;
    N9: TMenuItem;
    Converses1: TMenuItem;
    N10: TMenuItem;
    CF1: TMenuItem;
    N11: TMenuItem;
    MilhasKM1: TMenuItem;
    Sobre1: TMenuItem;
    QuantidadedeCalor1: TMenuItem;
    N12: TMenuItem;
    Energia1: TMenuItem;
    N13: TMenuItem;
    Energiapotencialelstica1: TMenuItem;
    Energiapotencialgravitacional1: TMenuItem;
    Energiapotencialcintica1: TMenuItem;
    QMCT1: TMenuItem;
    QCT1: TMenuItem;
    JouleCal1: TMenuItem;
    Image2: TImage;
    Pedidos1: TMenuItem;
    N14: TMenuItem;
    procedure Calculadora1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Calendrio1Click(Sender: TObject);
    procedure abuada1Click(Sender: TObject);
    procedure ringulo1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Navegador1Click(Sender: TObject);
    procedure Cilindro1Click(Sender: TObject);
    procedure Prismabaseretangular1Click(Sender: TObject);
    procedure Prismabasetriangular1Click(Sender: TObject);
    procedure Cone1Click(Sender: TObject);
    procedure ClculodeIMC1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CF1Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure MilhasKM1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Energiapotencialelstica1Click(Sender: TObject);
    procedure Energiapotencialgravitacional1Click(Sender: TObject);
    procedure Energiapotencialcintica1Click(Sender: TObject);
    procedure QMCT1Click(Sender: TObject);
    procedure QCT1Click(Sender: TObject);
    procedure JouleCal1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Pedidos1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  uCalendario, uTabuadas, uTriangulo, uVolumec, uVolpr, uVolpt, uVolcone, uImc,
  uCadastro, uCf, uFc, uMilekm, uSobre, uQcalor, uEpe, uEpg, uEpc, uCtermica,
  uJcal, uProdutos, uPedidos;

{$R *.dfm}

procedure TFrmPrincipal.abuada1Click(Sender: TObject);
begin
  if FrmTabuadas = nil then
  begin
    Application.CreateForm(TFrmTabuadas,FrmTabuadas);
  end;
  FrmTabuadas.Show;

end;

procedure TFrmPrincipal.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Deseja sair da aplicação?', mtConfirmation, [mbYes, mbNo],0)= mrYes then
  begin
    MessageDlg('Sua aplicação está sendo encerrada.', mtInformation, [mbOK],0);
    Close;
  end;
end;

procedure TFrmPrincipal.BitBtn2Click(Sender: TObject);
begin
if FrmCadClientes = nil then
  begin
    Application.CreateForm(TFrmCadClientes, FrmCadClientes);
  end;
  FrmCadClientes.Show;
end;

procedure TFrmPrincipal.BitBtn3Click(Sender: TObject);
begin
  if FrmTabuadas = nil then
  begin
    Application.CreateForm(TFrmTabuadas,FrmTabuadas);
  end;
  FrmTabuadas.Show;
end;

procedure TFrmPrincipal.BitBtn4Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', 'calc.exe', '', nil, SW_SHOWNORMAL);
end;

procedure TFrmPrincipal.Calculadora1Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', 'calc.exe', '', nil, SW_SHOWNORMAL);
end;

procedure TFrmPrincipal.Calendrio1Click(Sender: TObject);
begin
if FrmCalendario = nil then
  begin
    Application.CreateForm(TFrmCalendario,FrmCalendario);
  end;
  FrmCalendario.Show;
end;

procedure TFrmPrincipal.CF1Click(Sender: TObject);
begin
if FrmCf = nil then
  begin
    Application.CreateForm(TFrmCf, FrmCf);
  end;
  FrmCf.Show;
end;

procedure TFrmPrincipal.Cilindro1Click(Sender: TObject);
begin
if FrmVcilindro = nil then
  begin
    Application.CreateForm(TFrmVcilindro, FrmVcilindro);
  end;
  FrmVcilindro.Show;
end;

procedure TFrmPrincipal.ClculodeIMC1Click(Sender: TObject);
begin
if FrmImc = nil then
  begin
    Application.CreateForm(TFrmImc, FrmImc);
  end;
  FrmImc.Show;
end;

procedure TFrmPrincipal.Cone1Click(Sender: TObject);
begin
if FrmCone = nil then
  begin
    Application.CreateForm(TFrmCone, FrmCone);
  end;
  FrmCone.Show;
end;

procedure TFrmPrincipal.Energiapotencialcintica1Click(Sender: TObject);
begin
if FrmEpc = nil then
  begin
    Application.CreateForm(TFrmEpc, FrmEpc);
  end;
  FrmEpc.Show;
end;

procedure TFrmPrincipal.Energiapotencialelstica1Click(Sender: TObject);
begin
if FrmEpe = nil then
  begin
    Application.CreateForm(TFrmEpe, FrmEpe);
  end;
  FrmEpe.Show;
end;

procedure TFrmPrincipal.Energiapotencialgravitacional1Click(Sender: TObject);
begin
if FrmEpg = nil then
  begin
    Application.CreateForm(TFrmEpg, FrmEpg);
  end;
  FrmEpg.Show;
end;

procedure TFrmPrincipal.JouleCal1Click(Sender: TObject);
begin
if FrmJcal = nil then
  begin
    Application.CreateForm(TFrmJcal, FrmJcal);
  end;
  FrmJcal.Show;
end;

procedure TFrmPrincipal.MilhasKM1Click(Sender: TObject);
begin
if FrmMilekm = nil then
  begin
    Application.CreateForm(TFrmMilekm, FrmMilekm);
  end;
  FrmMilekm.Show;
end;

procedure TFrmPrincipal.N11Click(Sender: TObject);
begin
if FrmFc = nil then
  begin
    Application.CreateForm(TFrmFc, FrmFc);
  end;
  FrmFc.Show;
end;

procedure TFrmPrincipal.Navegador1Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', 'chrome.exe', '', nil, SW_SHOWNORMAL);
end;

procedure TFrmPrincipal.Pedidos1Click(Sender: TObject);
begin
if FrmPedidos = nil then
  begin
    Application.CreateForm(TFrmPedidos, FrmPedidos);
  end;
  FrmPedidos.Show;
end;

procedure TFrmPrincipal.Prismabaseretangular1Click(Sender: TObject);
begin
if FrmVolpr = nil then
  begin
    Application.CreateForm(TFrmVolpr, FrmVolpr);
  end;
  FrmVolpr.Show;
end;
procedure TFrmPrincipal.Prismabasetriangular1Click(Sender: TObject);
begin
if FrmVolpt = nil then
 begin
  Application.CreateForm(TFrmVolpt, FrmVolpt);
 end;
 FrmVolpt.Show;
end;



procedure TFrmPrincipal.Produtos1Click(Sender: TObject);
begin
if FrmProdutos = nil then
  begin
    Application.CreateForm(TFrmProdutos, FrmProdutos);
  end;
  FrmProdutos.Show;
end;

procedure TFrmPrincipal.QCT1Click(Sender: TObject);
begin
if FrmCterm = nil then
  begin
    Application.CreateForm(TFrmCterm, FrmCterm);
  end;
  FrmCterm.Show;
end;

procedure TFrmPrincipal.QMCT1Click(Sender: TObject);
begin
if FrmQcalor = nil then
  begin
    Application.CreateForm(TFrmQcalor, FrmQcalor);
  end;
  FrmQcalor.Show;
end;

procedure TFrmPrincipal.ringulo1Click(Sender: TObject);
begin
  if FrmTriangulo = nil then
  begin
    Application.CreateForm(TFrmTriangulo, FrmTriangulo);
  end;
  FrmTriangulo.Show;
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  if MessageDlg('Deseja sair da aplicação?', mtConfirmation, [mbYes, mbNo],0)= mrYes then
  begin
    MessageDlg('Sua aplicação está sendo encerrada.', mtInformation, [mbOK],0);
    Close;
  end;
end;

procedure TFrmPrincipal.Sobre1Click(Sender: TObject);
begin
if FrmSobre = nil then
  begin
    Application.CreateForm(TFrmSobre, FrmSobre);
  end;
  FrmSobre.Show;
end;

procedure TFrmPrincipal.Usurios1Click(Sender: TObject);
begin
if FrmCadClientes = nil then
  begin
    Application.CreateForm(TFrmCadClientes, FrmCadClientes);
  end;
  FrmCadClientes.Show;
end;

end.
