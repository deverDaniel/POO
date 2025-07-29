program ProjetoPOO;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form1},
  uClasse in 'uClasse.pas',
  uPlayer in 'uPlayer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
