object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 600
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -32
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold]
  TextHeight = 45
  object output: TEdit
    Left = 16
    Top = 16
    Width = 369
    Height = 53
    Alignment = taRightJustify
    TabOrder = 0
    Text = '0'
  end
  object btnDivision: TButton
    Left = 312
    Top = 75
    Width = 65
    Height = 89
    Caption = '/'
    DisabledImageName = 'btnDivision'
    TabOrder = 1
    OnClick = Division
  end
  object btnClearAll: TButton
    Left = 120
    Top = 75
    Width = 65
    Height = 89
    Caption = 'CE'
    TabOrder = 2
    OnClick = ClearAll
  end
  object btnClear: TButton
    Left = 216
    Top = 75
    Width = 65
    Height = 89
    Caption = 'C'
    TabOrder = 3
    OnClick = Clear
  end
  object btnBackspace: TButton
    Left = 24
    Top = 75
    Width = 65
    Height = 89
    Caption = #9003
    TabOrder = 4
    OnClick = Backspace
  end
  object btn7: TButton
    Left = 24
    Top = 184
    Width = 65
    Height = 89
    Caption = '7'
    TabOrder = 5
    OnClick = NumbersClicked
  end
  object btn8: TButton
    Left = 120
    Top = 184
    Width = 65
    Height = 89
    Caption = '8'
    TabOrder = 6
    OnClick = NumbersClicked
  end
  object btn9: TButton
    Left = 216
    Top = 184
    Width = 65
    Height = 89
    Caption = '9'
    TabOrder = 7
    OnClick = NumbersClicked
  end
  object btnMultiply: TButton
    Left = 312
    Top = 184
    Width = 65
    Height = 89
    Caption = 'X'
    TabOrder = 8
    OnClick = Multiply
  end
  object btn4: TButton
    Left = 24
    Top = 288
    Width = 65
    Height = 89
    Caption = '4'
    TabOrder = 9
    OnClick = NumbersClicked
  end
  object btn5: TButton
    Left = 120
    Top = 288
    Width = 65
    Height = 89
    Caption = '5'
    TabOrder = 10
    OnClick = NumbersClicked
  end
  object btn6: TButton
    Left = 216
    Top = 288
    Width = 65
    Height = 89
    Caption = '6'
    TabOrder = 11
    OnClick = NumbersClicked
  end
  object btnMinus: TButton
    Left = 312
    Top = 297
    Width = 65
    Height = 89
    Caption = '-'
    TabOrder = 12
    OnClick = MinusOperator
  end
  object btn1: TButton
    Left = 24
    Top = 392
    Width = 65
    Height = 89
    Caption = '1'
    TabOrder = 13
    OnClick = NumbersClicked
  end
  object btn2: TButton
    Left = 120
    Top = 392
    Width = 65
    Height = 89
    Caption = '2'
    TabOrder = 14
    OnClick = NumbersClicked
  end
  object btn3: TButton
    Left = 216
    Top = 392
    Width = 65
    Height = 89
    Caption = '3'
    TabOrder = 15
    OnClick = NumbersClicked
  end
  object btnPlus: TButton
    Left = 312
    Top = 392
    Width = 65
    Height = 89
    Caption = '+'
    TabOrder = 16
    OnClick = PlusOperator
  end
  object btnNegate: TButton
    Left = 24
    Top = 503
    Width = 65
    Height = 89
    Caption = #177
    TabOrder = 17
    OnClick = Negate
  end
  object btn0: TButton
    Left = 120
    Top = 503
    Width = 65
    Height = 89
    Caption = '0'
    TabOrder = 18
    OnClick = NumbersClicked
  end
  object btnDecimal: TButton
    Left = 216
    Top = 503
    Width = 65
    Height = 89
    Caption = '.'
    TabOrder = 19
    OnClick = DecimalPoint
  end
  object btnEqual: TButton
    Left = 312
    Top = 503
    Width = 65
    Height = 89
    Caption = '='
    TabOrder = 20
    OnClick = Equal
  end
end
