unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
  uses uClasse, uPlayer, uBoss;

procedure TForm1.Button1Click(Sender: TObject);
  var personagem: TPersonagem;
      player: Tplayer;
      boss: Tboss;
begin
  //personagem:= Tpersonagem.Create(10, 12);
  //personagem.setDano(0);
  //personagem.setNome('aaa');
  //personagem.setGenero('Masculinoa');
  //personagem.setNivel(0);
  //personagem.setDefesa(0);
  //personagem.setVida(0);
  //player:= TPlayer.Create('Daniel');

  player:= TPlayer.Create(10,2);
  player.setDano(10);
   ShowMessage('Dano do player: ' + player.getDano.ToString);

  boss:= Tboss.Create(10,2);
  boss.setDano(10);
  ShowMessage('Dano do boss: ' + boss.getDano.ToString);
end;

end.
