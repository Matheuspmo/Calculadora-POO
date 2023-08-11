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
    Button3: TButton;
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
    procedure Button3Click(Sender: TObject);
    procedure BtnSomaClick(Sender: TObject);
    procedure BtnSubtracaoClick(Sender: TObject);
    procedure BtnMultiplicacaoClick(Sender: TObject);
    procedure BtnDivisaoClick(Sender: TObject);
    procedure BtnIgualClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    var
     Botaovirgula, Botaoresultado : boolean;
     Operador : string;

     procedure BtnNumero(x: integer);
  end;

var
  FrmCalculadoraPOO: TFrmCalculadoraPOO;
  obj: TOperadores;

implementation

{$R *.dfm}

{ TFrmCalculadoraPOO }

procedure TFrmCalculadoraPOO.BtnNumero(x: integer);
begin
  if obj.operador = '' then
  begin
   if EdtTela1.Text = '0' then
   begin
    obj.valor1 := x;
    EdtTela1.text := obj.valor1.ToString
   end
   else
   begin
    obj.valor1 := (obj.valor1.ToString + x.ToString).ToDouble;
    EdtTela1.text := obj.valor1.ToString;
   end;
  end
  else
  begin
   if EdtTela1.Text = '0' then
   begin
    obj.valor2 := x;
    EdtTela1.text := obj.valor2.ToString
   end
   else
   begin
    obj.valor2 := (obj.valor2.ToString + x.ToString).ToDouble;
    EdtTela1.text := obj.valor2.ToString;
   end;
  end;
end;

procedure TFrmCalculadoraPOO.BtnSomaClick(Sender: TObject);
begin
 obj.valor2 := 0;
 obj.operador := ' + ';
 Botaovirgula  := False;
 EdtTela2.Text := obj.valor1.ToString + obj.operador;
end;

procedure TFrmCalculadoraPOO.BtnSubtracaoClick(Sender: TObject);
begin
 obj.valor2 := 0;
 obj.operador := ' - ';
 EdtTela2.Text := obj.valor1.ToString + obj.operador;
 Botaovirgula  := False;
end;

procedure TFrmCalculadoraPOO.BtnMultiplicacaoClick(Sender: TObject);
begin
 obj.valor2 := 0;
 obj.operador := ' X ';
 EdtTela2.Text := obj.valor1.ToString + obj.operador;
 Botaovirgula  := False;
end;

procedure TFrmCalculadoraPOO.BtnDivisaoClick(Sender: TObject);
begin
 obj.valor2 := 0;
 obj.operador := ' ÷ ';
 EdtTela2.Text := obj.valor1.ToString + obj.operador;
 Botaovirgula  := False;
end;

procedure TFrmCalculadoraPOO.BtnIgualClick(Sender: TObject);
begin
 Botaoresultado := True;
 EdtTela2.Text :=  obj.valor1.ToString + obj.operador + obj.valor2.ToString + ' = ';
 EdtTela1.Text := obj.resultado.ToString;
end;

procedure TFrmCalculadoraPOO.Button3Click(Sender: TObject);
begin
 if Botaovirgula = false then
 begin
  Botaovirgula  := True;
  if obj.operador = '' then
  begin
   EdtTela1.Text := EdtTela1.text + ',';
   obj.valor1    := StrToFloat(EdtTela1.Text);
  end
  else
  begin
   EdtTela1.Text := EdtTela1.text + ',';
   obj.valor2    := StrToFloat(EdtTela1.Text);
  end;
 end;
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
