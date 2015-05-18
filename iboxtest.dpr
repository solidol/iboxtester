program iboxtest;

uses
  Forms,
  main in 'main.pas' {fmMain},
  reguser in 'register\reguser.pas' {fmRegister},
  test1 in 'tests\test1.pas' {fmTest1},
  test2 in 'tests\test2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
