object FrmCalculadoraPOO: TFrmCalculadoraPOO
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Calculadora'
  ClientHeight = 391
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object PnlBotoes: TPanel
    Left = 0
    Top = 79
    Width = 320
    Height = 312
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 78
    ExplicitWidth = 316
    object BtnSinal: TButton
      Left = 0
      Top = 260
      Width = 80
      Height = 52
      Caption = '+/-'
      TabOrder = 0
    end
    object Btn0: TButton
      Left = 80
      Top = 260
      Width = 80
      Height = 52
      Caption = '0'
      TabOrder = 1
      OnClick = Btn0Click
    end
    object Button3: TButton
      Left = 160
      Top = 260
      Width = 80
      Height = 52
      Caption = ','
      TabOrder = 2
      OnClick = Button3Click
    end
    object BtnIgual: TButton
      Left = 240
      Top = 260
      Width = 80
      Height = 52
      Caption = '='
      TabOrder = 3
      OnClick = BtnIgualClick
    end
    object Btn1: TButton
      Left = 0
      Top = 208
      Width = 80
      Height = 52
      Caption = '1'
      TabOrder = 4
      OnClick = Btn1Click
    end
    object Btn2: TButton
      Left = 80
      Top = 208
      Width = 80
      Height = 52
      Caption = '2'
      TabOrder = 5
      OnClick = Btn2Click
    end
    object Btn3: TButton
      Left = 160
      Top = 208
      Width = 80
      Height = 52
      Caption = '3'
      TabOrder = 6
      OnClick = Btn3Click
    end
    object BtnSoma: TButton
      Left = 240
      Top = 208
      Width = 80
      Height = 52
      Caption = '+'
      TabOrder = 7
      OnClick = BtnSomaClick
    end
    object Btn4: TButton
      Left = 0
      Top = 156
      Width = 80
      Height = 52
      Caption = '4'
      TabOrder = 8
      OnClick = Btn4Click
    end
    object Btn5: TButton
      Left = 80
      Top = 156
      Width = 80
      Height = 52
      Caption = '5'
      TabOrder = 9
      OnClick = Btn5Click
    end
    object Btn6: TButton
      Left = 160
      Top = 156
      Width = 80
      Height = 52
      Caption = '6'
      TabOrder = 10
      OnClick = Btn6Click
    end
    object BtnSubtracao: TButton
      Left = 240
      Top = 156
      Width = 80
      Height = 52
      Caption = '-'
      TabOrder = 11
      OnClick = BtnSubtracaoClick
    end
    object Btn7: TButton
      Left = 0
      Top = 104
      Width = 80
      Height = 52
      Caption = '7'
      TabOrder = 12
      OnClick = Btn7Click
    end
    object Btn8: TButton
      Left = 80
      Top = 104
      Width = 80
      Height = 52
      Caption = '8'
      TabOrder = 13
      OnClick = Btn8Click
    end
    object Btn9: TButton
      Left = 160
      Top = 104
      Width = 80
      Height = 52
      Caption = '9'
      TabOrder = 14
      OnClick = Btn9Click
    end
    object BtnMultiplicacao: TButton
      Left = 240
      Top = 104
      Width = 80
      Height = 52
      Caption = 'X'
      TabOrder = 15
      OnClick = BtnMultiplicacaoClick
    end
    object BtnUmSobreValor: TButton
      Left = 0
      Top = 52
      Width = 80
      Height = 52
      Caption = '1/x'
      TabOrder = 16
    end
    object BtnValorQuadrado: TButton
      Left = 80
      Top = 52
      Width = 80
      Height = 52
      Caption = 'x'#178
      TabOrder = 17
    end
    object BtnRaizQuadradaValor: TButton
      Left = 160
      Top = 52
      Width = 80
      Height = 52
      Caption = #8730'x'
      TabOrder = 18
    end
    object BtnDivisao: TButton
      Left = 240
      Top = 52
      Width = 80
      Height = 52
      Caption = #247
      TabOrder = 19
      OnClick = BtnDivisaoClick
    end
    object BtnPorcent: TButton
      Left = 0
      Top = 2
      Width = 80
      Height = 52
      Caption = '%'
      TabOrder = 20
    end
    object BtnLimpar: TButton
      Left = 80
      Top = 2
      Width = 80
      Height = 52
      Caption = 'CE'
      TabOrder = 21
    end
    object BtnLimparTudo: TButton
      Left = 160
      Top = 2
      Width = 80
      Height = 52
      Caption = 'C'
      TabOrder = 22
      OnClick = BtnLimparTudoClick
    end
    object BtnLimparCaracter: TButton
      Left = 240
      Top = 2
      Width = 80
      Height = 52
      Caption = #9003
      TabOrder = 23
    end
  end
  object PnlTelas: TPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 79
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 316
    ExplicitHeight = 78
    object EdtTela1: TEdit
      Left = 1
      Top = 25
      Width = 318
      Height = 53
      Align = alBottom
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      ExplicitTop = 24
      ExplicitWidth = 314
    end
    object EdtTela2: TEdit
      Left = 1
      Top = 1
      Width = 318
      Height = 21
      Align = alTop
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      ExplicitWidth = 314
    end
  end
end
