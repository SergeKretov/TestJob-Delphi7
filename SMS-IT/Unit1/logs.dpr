program logs;

uses
  Forms,
  logsMain in 'logsMain.pas' {FormMain},
  logsSetting in 'logsSetting.pas' {FormSetting};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormSetting, FormSetting);
  Application.Run;
end.
