unit uClasse;

interface

  //Abstra��o
  //Encapsulamento
  type TPersonagem = class
    Nome, Genero: String;
    Vida, Nivel, Dano, Defesa: Integer;
    constructor Create (aDano, aDefesa: Integer);
  end;

  //heran�a
  type Tplayer = class (TPersonagem)
    NickName: String;
    Experiencia: Double;
  end;
  type TBoss = class (TPersonagem)

  end;

implementation

{ TPersonagem }

constructor TPersonagem.Create(aDano, aDefesa: Integer);
begin
  Self.Dano:= aDano;
  Self.Defesa:= aDefesa;
end;

end.
