unit uBoss;

interface
  uses uPersonagem;

  type TBoss = class (TPersonagem)
    habilidadeEspecial: String;
    function getDano:integer;
    procedure setDano(Dano: Integer);

  end;

implementation
  uses System.SysUtils;
{ TBoss }


function TBoss.getDano: integer;
begin
  result:= self.Dano + 10;
end;

procedure TBoss.setDano(Dano: Integer);
begin
  if Dano <= 0 then begin
   raise Exception.Create('O dano Tem que ser maior que zero. TPersonagem.setDano');
  end;
  self.Dano:=Dano;
end;

end.
