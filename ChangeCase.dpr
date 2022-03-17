program ChangeCase;

uses
  Forms,
  uMain in 'uMain.pas' {Form1},
  uChangeCase in 'uChangeCase.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
