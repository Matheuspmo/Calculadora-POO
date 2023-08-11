program CalculadoraPOO;

uses
  Vcl.Forms,
  uCalculadoraPOO in 'uCalculadoraPOO.pas' {FrmCalculadoraPOO},
  uOperadores in 'uOperadores.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCalculadoraPOO, FrmCalculadoraPOO);
  Application.Run;
end.
