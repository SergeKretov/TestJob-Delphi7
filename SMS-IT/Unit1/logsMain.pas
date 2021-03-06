unit logsMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, logsSetting, ExtCtrls, StdCtrls, Buttons;

type
  TFormMain = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    StaticTextLogFile: TStaticText;
    StaticTextNoTh: TStaticText;
    StaticTextLifeTime: TStaticText;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.BitBtn2Click(Sender: TObject);
begin
  FormSetting.ShowModal;
end;

procedure TFormMain.FormShow(Sender: TObject);
begin
  FormSetting.ReadSetting;
  StaticTextLogFile.Caption:='???? ?????? ?????: '+FormSetting.logSet.logFileName;
  StaticTextNoTh.Caption:='?????????? ???????: '+IntToStr(FormSetting.logSet.numberOfThread);
  StaticTextLifeTime.Caption:='????? ????? ?????? ? ??? (???.): '+IntToStr(FormSetting.logSet.OldClearTime);
end;

end.
