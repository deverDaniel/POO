program ProjetoPOO;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form1},
  uPlayer in 'uPlayer.pas',
  uBoss in 'uBoss.pas',
  uPersonagem in 'uPersonagem.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
