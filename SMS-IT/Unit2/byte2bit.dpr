program byte2bit;

uses
  Forms,
  byte_Main in 'byte_Main.pas' {mainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TmainForm, mainForm);
  Application.Run;
end.
