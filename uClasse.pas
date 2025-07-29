unit uClasse;

interface

  //Abstração
  //Encapsulamento
  type TPersonagem = class
  protected
    Nome, Genero: String;
    Vida, Nivel, Dano, Defesa: Integer;
  public
    //Getter & Setter
    function getDano: Integer;
    procedure setDano(Dano: Integer);
    function getNome: String;
    procedure setNome(Nome: String);
    function getGenero: String;
    procedure setGenero(Genero: String);
    function getVida: Integer;
    procedure setVida(Vida: Integer);
    function getNivel: Integer;
    procedure setNivel(Nivel: Integer);
    function getDefesa: Integer;
    procedure setDefesa(Defesa: Integer);
    constructor Create (Dano, Defesa: Integer);
  end;


implementation
  uses System.SysUtils;
{ TPersonagem }


constructor TPersonagem.Create(Dano, Defesa: Integer);
begin
  Self.Dano:= Dano;
  Self.Defesa:= Defesa;
end;

function TPersonagem.getDano: Integer;
begin
  result:= self.Dano + (self.Nivel * 10);
end;

function TPersonagem.getDefesa: Integer;
begin
  result:= self.Defesa + 10;
end;

function TPersonagem.getGenero: String;
begin
  result:= self.Genero;
end;

function TPersonagem.getNivel: Integer;
begin
  result:= self.Nivel;
end;

function TPersonagem.getNome: String;
begin
  result:= self.Nome;
end;

function TPersonagem.getVida: Integer;
begin
   result:= self.Vida + (self.Nivel * 6);
end;

procedure TPersonagem.setDano(Dano: Integer);
begin
  if Dano <= 0 then begin
   raise Exception.Create('O dano Tem que ser maior que zero. TPersonagem.setDano');
  end;
  self.Dano:=Dano;
end;

procedure TPersonagem.setDefesa(Defesa: Integer);
begin
  if Defesa <= 0 then begin
   raise Exception.Create('A defesa Tem que ser maior que zero. TPersonagem.setDefesa');
  end;
  self.Defesa:= Defesa;
end;

procedure TPersonagem.setGenero(Genero: String);
begin
 if (Genero <> 'Masculino') and (Genero <>  'Feminino') and (Genero <> 'outro') then begin
    raise Exception.Create('Genero invalido. TPersonagem.setGenero');
  end;
  self.Genero:= Genero;
end;

procedure TPersonagem.setNivel(Nivel: Integer);
begin
  if Nivel <= 0 then begin
   raise Exception.Create('O Nivel Tem que ser maior que zero. TPersonagem.setNivel');
  end;
  if Nivel > 20 then begin
   raise Exception.Create('O Nivel Tem que ser menor ou igual a 20. TPersonagem.setNivel');
  end;
  self.Nivel:=Nivel;

end;

procedure TPersonagem.setNome(Nome: String);
begin
  if length(Nome) < 6 then begin
    raise Exception.Create('nome precisa ter 6 ou mais caracteres. TPersonagem.setNome');
  end;
  self.Nome:= Nome;
end;

procedure TPersonagem.setVida(Vida: Integer);
begin
  if Vida <= 0 then begin
   raise Exception.Create('A vida Tem que ser maior que zero. TPersonagem.setVida');
  end;
  self.Vida:=Vida;
end;

end.
