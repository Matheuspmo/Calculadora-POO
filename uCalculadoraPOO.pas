unit uCalculadoraPOO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  uOperadores;

type
  TFrmCalculadoraPOO = class(TForm)
    PnlBotoes: TPanel;
    PnlTelas: TPanel;
    BtnSinal: TButton;
    Btn0: TButton;
    BtnVirgula: TButton;
    BtnIgual: TButton;
    Btn1: TButton;
    Btn2: TButton;
    Btn3: TButton;
    BtnSoma: TButton;
    Btn4: TButton;
    Btn5: TButton;
    Btn6: TButton;
    BtnSubtracao: TButton;
    Btn7: TButton;
    Btn8: TButton;
    Btn9: TButton;
    BtnMultiplicacao: TButton;
    BtnUmSobreValor: TButton;
    BtnValorQuadrado: TButton;
    BtnRaizQuadradaValor: TButton;
    BtnDivisao: TButton;
    BtnPorcent: TButton;
    BtnLimpar: TButton;
    BtnLimparTudo: TButton;
    BtnLimparCaracter: TButton;
    EdtTela1: TEdit;
    EdtTela2: TEdit;
    procedure Btn0Click(Sender: TObject);
    procedure Btn1Click(Sender: TObject);
    procedure Btn2Click(Sender: TObject);
    procedure Btn3Click(Sender: TObject);
    procedure Btn4Click(Sender: TObject);
    procedure Btn5Click(Sender: TObject);
    procedure Btn6Click(Sender: TObject);
    procedure Btn7Click(Sender: TObject);
    procedure Btn8Click(Sender: TObject);
    procedure Btn9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnLimparTudoClick(Sender: TObject);
    procedure BtnVirgulaClick(Sender: TObject);
    procedure BtnSomaClick(Sender: TObject);
    procedure BtnSubtracaoClick(Sender: TObject);
    procedure BtnMultiplicacaoClick(Sender: TObject);
    procedure BtnDivisaoClick(Sender: TObject);
    procedure BtnIgualClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnPorcentClick(Sender: TObject);
    procedure BtnRaizQuadradaValorClick(Sender: TObject);
    procedure BtnLimparCaracterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
     Botaovirgula, Botaoresultado, sinalsoma, sinalsub, sinalmult, sinaldiv : boolean;
     total : Double;

     procedure BtnNumero(x: integer);
     procedure Ativarbotoes;
     procedure Desativarbotoes;
     procedure Resetar;
  end;

var
  FrmCalculadoraPOO: TFrmCalculadoraPOO;
  obj: TOperadores;

implementation

{$R *.dfm}

{ TFrmCalculadoraPOO }

procedure TFrmCalculadoraPOO.BtnNumero(x: integer);
begin
 Ativarbotoes;
 EdtTela1.Font.Size := 28;
 if ((Botaoresultado = True) and (obj.valor2 <> 0)) then
 begin
  obj.operador := '';
  Botaoresultado := False;
  botaovirgula := False;
  obj.valor1 := 0;
  EdtTela2.Text := '';
 end;
 if ((EdtTela1.Text = 'Resultado indefinido') or
   (EdtTela1.Text = 'Não é possível dividir por zero')) then
  EdtTela2.Text := '';

 if obj.operador = '' then
 begin
  if botaovirgula = True then
  begin
   EdtTela1.Text := EdtTela1.Text + x.ToString;
   obj.valor1 := StrToFloat(EdtTela1.Text);
  end
  else
  begin
   obj.valor1 := (obj.valor1.ToString + x.ToString).ToDouble;
   EdtTela1.Text := obj.valor1.ToString
  end;
 end
 else
 begin
  if botaovirgula = True then
  begin
   EdtTela1.Text := EdtTela1.Text + x.ToString;
   obj.valor2 := StrToFloat(EdtTela1.Text);
  end
  else
  begin
   obj.valor2 := (obj.valor2.ToString + x.ToString).ToDouble;
   EdtTela1.Text := obj.valor2.ToString;
  end;
 end;
end;

procedure TFrmCalculadoraPOO.BtnPorcentClick(Sender: TObject);
begin
 if obj.valor2 = 0 then
 begin
  EdtTela1.Text := '0';
  EdtTela2.Text := '0';
 end
 else
 begin
  obj.valor2 := obj.valor2 / 100;
  EdtTela2.Text := obj.valor1.ToString + obj.operador + obj.valor2.ToString;
  EdtTela1.Text := obj.valor2.ToString;
 end;
end;

procedure TFrmCalculadoraPOO.BtnRaizQuadradaValorClick(Sender: TObject);
begin
 total := sqrt(obj.valor1);
 EdtTela2.Text := '√(' + obj.valor1.ToString + ')';
 EdtTela1.Text := total.ToString;
 obj.valor1 := total;
end;

procedure TFrmCalculadoraPOO.BtnSomaClick(Sender: TObject);
begin
 EdtTela1.Font.Size := 28;
 obj.valor2 := 0;
 obj.operador := ' + ';
 sinalsoma := True;
 sinalsub := False;
 sinalmult := False;
 sinaldiv := False;
 botaovirgula := False;
 Botaoresultado := False;
 EdtTela2.Text := obj.valor1.ToString + obj.operador;
end;

procedure TFrmCalculadoraPOO.BtnSubtracaoClick(Sender: TObject);
begin
 EdtTela1.Font.Size := 28;
 obj.valor2 := 0;
 obj.operador := ' - ';
 sinalsoma := False;
 sinalsub := True;
 sinalmult := False;
 sinaldiv := False;
 botaovirgula := False;
 Botaoresultado := False;
 EdtTela2.Text := obj.valor1.ToString + obj.operador;
end;

procedure TFrmCalculadoraPOO.BtnMultiplicacaoClick(Sender: TObject);
begin
EdtTela1.Font.Size := 28;
 obj.valor2 := 0;
 obj.operador := ' X ';
 sinalsoma := False;
 sinalsub := False;
 sinalmult := True;
 sinaldiv := False;
 botaovirgula := False;
 Botaoresultado := False;
 EdtTela2.Text := obj.valor1.ToString + obj.operador;
end;

procedure TFrmCalculadoraPOO.BtnDivisaoClick(Sender: TObject);
begin
 EdtTela1.Font.Size := 28;
 obj.valor2 := 0;
 obj.operador := ' ÷ ';
 sinalsoma := False;
 sinalsub := False;
 sinalmult := False;
 sinaldiv := True;
 botaovirgula := False;
 Botaoresultado := False;
 EdtTela2.Text := obj.valor1.ToString + obj.operador;
end;

procedure TFrmCalculadoraPOO.BtnIgualClick(Sender: TObject);
begin
 if ((obj.operador = ' ÷ ') and (obj.valor1 = 0) and (obj.valor2 = 0))  then
 begin
  EdtTela1.Font.Size := 25;
  EdtTela1.Text := 'Resultado indefinido';
  Desativarbotoes;
 end
 else if ((obj.operador = ' ÷ ') and (obj.valor1 = 0)) then
 begin
  EdtTela1.Font.Size := 17;
  EdtTela1.Text := 'Não é possível dividir por zero';
  Desativarbotoes;
 end
 else
 begin
  EdtTela2.Text :=  obj.valor1.ToString + obj.operador + obj.valor2.ToString + ' = ';
  EdtTela1.Text := obj.resultado.ToString;
 end;
 Botaoresultado := True;
end;

procedure TFrmCalculadoraPOO.BtnVirgulaClick(Sender: TObject);
begin
 EdtTela1.Font.Size := 28;
 if (botaovirgula = False) then
 begin
  botaovirgula := True;
  if obj.operador = '' then
   EdtTela1.Text := obj.valor1.ToString + ','
  else
   EdtTela1.Text := obj.valor2.ToString + ',';
 end;
 if (Botaoresultado = True) then
 begin
  Botaoresultado := False;
  obj.valor1 := 0;
  EdtTela1.Text := obj.valor1.ToString + ',';
  EdtTela2.Text := '';
  obj.operador := '';
 end;
end;

procedure TFrmCalculadoraPOO.Desativarbotoes;
begin
 BtnSinal.Enabled := False;
 BtnVirgula.Enabled := False;
 BtnSoma.Enabled := False;
 BtnSubtracao.Enabled := False;
 BtnMultiplicacao.Enabled := False;
 BtnDivisao.Enabled := False;
 BtnRaizQuadradaValor.Enabled := False;
 BtnValorQuadrado.Enabled := False;
 BtnUmSobreValor.Enabled := False;
 BtnPorcent.Enabled := False;
end;

procedure TFrmCalculadoraPOO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 FreeAndNil(obj);
end;

procedure TFrmCalculadoraPOO.FormShow(Sender: TObject);
begin
 obj := TOperadores.Create;
end;

procedure TFrmCalculadoraPOO.Resetar;
begin
 Ativarbotoes;
 EdtTela1.Font.Size := 28;
 obj.valor1 := 0;
 obj.valor2 := 0;
 obj.operador := '';
 sinalsoma := False;
 sinalsub := False;
 sinalmult := False;
 sinaldiv := False;
 botaovirgula := False;
 Botaoresultado := False;
 EdtTela1.Text := obj.valor1.ToString;
 EdtTela2.Text := '';
end;

procedure TFrmCalculadoraPOO.Ativarbotoes;
begin
 BtnSinal.Enabled := True;
 BtnVirgula.Enabled := True;
 BtnSoma.Enabled := True;
 BtnSubtracao.Enabled := True;
 BtnMultiplicacao.Enabled := True;
 BtnDivisao.Enabled := True;
 BtnRaizQuadradaValor.Enabled := True;
 BtnValorQuadrado.Enabled := True;
 BtnUmSobreValor.Enabled := True;
 BtnPorcent.Enabled := True;
end;

procedure TFrmCalculadoraPOO.Btn0Click(Sender: TObject);
begin
 BtnNumero(0);
end;

procedure TFrmCalculadoraPOO.Btn1Click(Sender: TObject);
begin
 BtnNumero(1);
end;

procedure TFrmCalculadoraPOO.Btn2Click(Sender: TObject);
begin
 BtnNumero(2);
end;

procedure TFrmCalculadoraPOO.Btn3Click(Sender: TObject);
begin
 BtnNumero(3);
end;

procedure TFrmCalculadoraPOO.Btn4Click(Sender: TObject);
begin
 BtnNumero(4);
end;

procedure TFrmCalculadoraPOO.Btn5Click(Sender: TObject);
begin
 BtnNumero(5);
end;

procedure TFrmCalculadoraPOO.Btn6Click(Sender: TObject);
begin
 BtnNumero(6);
end;

procedure TFrmCalculadoraPOO.Btn7Click(Sender: TObject);
begin
 BtnNumero(7);
end;

procedure TFrmCalculadoraPOO.Btn8Click(Sender: TObject);
begin
 BtnNumero(8);
end;

procedure TFrmCalculadoraPOO.Btn9Click(Sender: TObject);
begin
 BtnNumero(9);
end;

procedure TFrmCalculadoraPOO.BtnLimparCaracterClick(Sender: TObject);
begin
EdtTela1.Font.Size := 28;
 if ((EdtTela1.Text = 'Resultado indefinido') or
   (EdtTela1.Text = 'Não é possível dividir por zero')) then
 begin
  Resetar;
 end
 else
 begin
  if obj.operador = '' then
  begin
   if Botaoresultado = True then
   begin
    EdtTela2.Text := '';
   end
   else
   begin
    EdtTela1.Text := copy(EdtTela1.Text, 0, length(EdtTela1.Text) - 1);
    if length(EdtTela1.Text) = 0 then
     EdtTela1.Text := '0';
   end;

   obj.valor1 := StrToFloat(EdtTela1.Text);
  end
  else
  begin
   if Botaoresultado = True then
   begin
    EdtTela2.Text := '';
   end
   else
   begin
    EdtTela1.Text := copy(EdtTela1.Text, 0, length(EdtTela1.Text) - 1);
    if length(EdtTela1.Text) = 0 then
     EdtTela1.Text := '0';
   end;

   obj.valor2 := StrToFloat(EdtTela1.Text);
  end;
 end;
end;

procedure TFrmCalculadoraPOO.BtnLimparTudoClick(Sender: TObject);
begin
 EdtTela1.Text  := '';
 EdtTela2.Text  := '';
 obj.valor1     := 0;
 obj.valor2     := 0;
 Botaovirgula   := False;
 Botaoresultado := False;
end;

end.
