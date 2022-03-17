unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Memo2: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Memo2Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses uChangeCase;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var i : Integer;
begin

  Memo2.Clear;

  if Memo1.Lines.Count>0 then
  begin
    for i := 0 to Memo1.Lines.Count - 1 do
      Memo2.Lines.Add( ChangeCase(Memo1.Lines[i],tccAllUpper) );
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var i : Integer;
begin

  Memo2.Clear;

  if Memo1.Lines.Count>0 then
  begin
    for i := 0 to Memo1.Lines.Count - 1 do
      Memo2.Lines.Add( ChangeCase(Memo1.Lines[i],tccAllLower) );
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var i : Integer;
begin

  Memo2.Clear;

  if Memo1.Lines.Count>0 then
  begin
    for i := 0 to Memo1.Lines.Count - 1 do
      Memo2.Lines.Add( ChangeCase(Memo1.Lines[i],tccSentence) );
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var i : Integer;
begin

  Memo2.Clear;

  if Memo1.Lines.Count>0 then
  begin
    for i := 0 to Memo1.Lines.Count - 1 do
      Memo2.Lines.Add( ChangeCase(Memo1.Lines[i],tccTitle) );
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var i : Integer;
begin

  Memo2.Clear;

  if Memo1.Lines.Count>0 then
  begin
    for i := 0 to Memo1.Lines.Count - 1 do
      Memo2.Lines.Add( ChangeCase(Memo1.Lines[i],tccToggle) );
  end;
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
  label1.Caption := 'Line: '+IntToStr(Memo1.Lines.Count)+' | Words: '+IntToStr(Length(Memo1.Text)); 
end;

procedure TForm1.Memo2Change(Sender: TObject);
begin
  label2.Caption := 'Line: '+IntToStr(Memo2.Lines.Count)+' | Words: '+IntToStr(Length(Memo2.Text));
end;

procedure TForm1.Button6Click(Sender: TObject);
var i : Integer;
begin

  Memo2.Clear;

  if Memo1.Lines.Count>0 then
  begin
    for i := 0 to Memo1.Lines.Count - 1 do
      Memo2.Lines.Add(Memo1.Lines[i]);
  end;
end;

end.
