unit uPlayer;

interface
  uses uClasse;

  type Tplayer = class (TPersonagem)
  private
    NickName: String;
    Experiencia: Double;
  public
    function getNickName: String;
    procedure setNickName(NickName: String);
    function getExperiencia: Double;
    procedure setExperiencia(Experiencia: Double);
    constructor Create (NickName: String);
  end;


implementation

{ Tplayer }

constructor Tplayer.Create(NickName: String);
begin
  Self.NickName:= NickName;
end;

function Tplayer.getExperiencia: Double;
begin
  result:= self.Experiencia;
end;

function Tplayer.getNickName: String;
begin
  result:= self.NickName
end;

procedure Tplayer.setExperiencia(Experiencia: Double);
begin
  self.Experiencia:= Experiencia;
end;

procedure Tplayer.setNickName(NickName: String);
begin
  self.NickName:= NickName;
end;

end.
