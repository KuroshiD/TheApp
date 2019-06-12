program MeuApp;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  uTabuadas in 'uTabuadas.pas' {FrmTabuadas},
  uTriangulo in 'uTriangulo.pas' {FrmTriangulo},
  uCalendario in 'uCalendario.pas' {FrmCalendario},
  uImc in 'uImc.pas' {FrmImc},
  uVolumec in 'uVolumec.pas' {FrmVcilindro},
  uVolpr in 'uVolpr.pas' {FrmVolpr},
  uVolpt in 'uVolpt.pas' {FrmVolpt},
  uVolcone in 'uVolcone.pas' {FrmCone},
  uBancodados in 'uBancodados.pas' {DataModule1: TDataModule},
  uCadastro in 'uCadastro.pas' {FrmCadClientes},
  uCf in 'uCf.pas' {FrmCf},
  uFc in 'uFc.pas' {FrmFc},
  uMilekm in 'uMilekm.pas' {FrmMilekm},
  uSobre in 'uSobre.pas' {FrmSobre},
  uQcalor in 'uQcalor.pas' {FrmQcalor},
  uEpe in 'uEpe.pas' {FrmEpe},
  uEpg in 'uEpg.pas' {FrmEpg},
  uEpc in 'uEpc.pas' {FrmEpc},
  uCtermica in 'uCtermica.pas' {FrmCterm},
  uJcal in 'uJcal.pas' {FrmJcal},
  uProdutos in 'uProdutos.pas' {FrmProdutos},
  uPedidos in 'uPedidos.pas' {FrmPedidos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFrmJcal, FrmJcal);
  Application.CreateForm(TFrmProdutos, FrmProdutos);
  Application.CreateForm(TFrmPedidos, FrmPedidos);
  Application.Run;
end.
