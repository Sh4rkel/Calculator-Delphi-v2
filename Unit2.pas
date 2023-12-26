unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    output: TEdit;
    btnDivision: TButton;
    btnClearAll: TButton;
    btnClear: TButton;
    btnBackspace: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btnMultiply: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btnMinus: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btnPlus: TButton;
    btnNegate: TButton;
    btn0: TButton;
    btnDecimal: TButton;
    btnEqual: TButton;
    procedure NumbersClicked(Sender: TObject);
    procedure Clear(Sender: TObject);
    procedure Backspace(Sender: TObject);
    procedure ClearAll(Sender: TObject);
    procedure Negate(Sender: TObject);
    procedure PlusOperator(Sender: TObject);
    procedure MinusOperator(Sender: TObject);
    procedure Multiply(Sender: TObject);
    procedure Division(Sender: TObject);
    procedure DecimalPoint(Sender: TObject);
    procedure Equal(Sender: TObject);
  private
    { Private declarations }
    first_number, second_number, result: string;   // variabilele in care salvam numerele
    operators: char;  // variabila in care salvam operatorul
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}



procedure TForm2.MinusOperator(Sender: TObject);   // functia de scadere
begin
  first_number := output.Text;
  operators := '-';
  output.Text := '';
end;

procedure TForm2.PlusOperator(Sender: TObject);  // functia de adunare
begin
  first_number := output.Text;
  operators := '+';
  output.Text := '';

end;

procedure TForm2.Negate(Sender: TObject);  // functia care neaga numarul
var copy: real;
begin
copy := StrToFloat(output.Text);
output.Text := FloatToStr(-1 * copy);
end;

procedure TForm2.DecimalPoint(Sender: TObject);   // functia care adauga virgula pentru  zecimale
begin
  if (POS('.', output.Text) <> 0) then
    exit
  else
    output.Text := output.Text + btnDecimal.Caption;

end;

procedure TForm2.Division(Sender: TObject);    // functia de impartire
begin
  first_number := output.Text;
  operators := '/';
  output.Text := '';
end;

procedure TForm2.Equal(Sender: TObject);   // functia cu care afisam rezultatul
begin
  second_number := output.Text;

  if operators = '+' then
    result := FloatToStr(StrToFloat(first_number) + StrToFloat(second_number));
    output.Text := result;

  if operators = '-' then
    result := FloatToStr(StrToFloat(first_number) - StrToFloat(second_number));
    output.Text := result;

  if operators = 'X' then
    result := FloatToStr(StrToFloat(first_number) * StrToFloat(second_number));
    output.Text := result;

  if operators = '/' then
    result := FloatToStr(StrToFloat(first_number) / StrToFloat(second_number));
    output.Text := result;

end;

procedure TForm2.ClearAll(Sender: TObject);    // functia care reseteaza tot
var number1, number2: string;
begin
output.Text := '0';

number1 := first_number;
number2 := second_number;

number1 := '';
number2 := '';
end;

procedure TForm2.Clear(Sender: TObject);      // functia care strege ultimul input
begin
  output.Text := '0';

end;

procedure TForm2.Backspace(Sender: TObject);   //   functia care strege ultimul element introdus
begin
  output.Text := copy(output.Text, 1, length(output.Text) - 1);
if output.Text = '' then
  output.Text := '0';
end;

procedure TForm2.Multiply(Sender: TObject);          // functia de inmultire
begin
  first_number := output.Text;
  operators := 'X';
  output.Text := '';
end;

procedure TForm2.NumbersClicked(Sender: TObject);   // functia care introduce charactere in mechanismul calcul
begin
if output.Text = '0' then
begin
  output.Text := (Sender as TButton).Caption;
end
else
  output.Text := output.Text + (Sender as TButton).Caption;
end;

end.
