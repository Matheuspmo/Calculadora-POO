unit uOperadores;

interface

type

TOperadores = class
private
    Fvalor2: Double;
    Fvalor1: Double;
    Foperador: String;
    procedure Setvalor1(const Value: Double);
    procedure Setvalor2(const Value: Double);
    procedure Setoperador(const Value: String);
 { private declarations }
protected
 { protected declarations }
public
 { public declarations }
 property valor1: Double read Fvalor1 write Setvalor1;
 property valor2: Double read Fvalor2 write Setvalor2;
 property operador: String read Foperador write Setoperador;
 function resultado : Double;
published
 { published declarations }
end;

implementation

{ TOperadores }

function TOperadores.resultado: Double;
begin
 if operador = ' + ' then
 begin
  result := valor1 + valor2;
  valor1 := result;
 end;
 if operador = ' - ' then
 begin
  result := valor1 - valor2;
  valor1 := result;
 end;
 if operador = ' X ' then
 begin
  result := valor1 * valor2;
  valor1 := result;
 end;
 if operador = ' ÷ ' then
 begin
  result := valor1 / valor2;
  valor1 := result;
 end;
end;

procedure TOperadores.Setoperador(const Value: String);
begin
  Foperador := Value;
end;

procedure TOperadores.Setvalor1(const Value: Double);
begin
  Fvalor1 := Value;
end;

procedure TOperadores.Setvalor2(const Value: Double);
begin
  Fvalor2 := Value;
end;

end.
