program pradmin;

uses
  Forms,
  admin in 'admin.pas' {fmadmin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfmadmin, fmadmin);
  Application.Run;
end.
