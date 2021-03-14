unit logsSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Grids;

type TSetting = record
  logFileName:string[255];
  numberOfThread:byte;
  ThreadLifeTime:array[1..255] of byte;
  OldClearTime:byte;
end;

type
  TFormSetting = class(TForm)
    Label1: TLabel;
    EditLogFileName: TEdit;
    Label2: TLabel;
    SpinEditNumThread: TSpinEdit;
    Label3: TLabel;
    SpinEditTimeLife: TSpinEdit;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    StringGridThreadLife: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure SpinEditNumThreadChange(Sender: TObject);
    procedure SaveSetting;
    procedure ReadSetting;
    procedure UpdateInt;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditLogFileNameChange(Sender: TObject);
    procedure SpinEditTimeLifeChange(Sender: TObject);
    procedure StringGridThreadLifeDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    logSet:Tsetting;
    isSetSaved:boolean;
  end;


var
  FormSetting: TFormSetting;
  fset: file of TSetting;

implementation

{$R *.dfm}
procedure TFormSetting.SaveSetting;
begin
  AssignFile(fset,'setup.ini');
  Rewrite(fset);
  Write(fset,logSet);
  CloseFile(fset);
  isSetSaved:=True;
end;

procedure TFormSetting.ReadSetting;
begin
  AssignFile(fset,'setup.ini');
  Reset(fset);
  Read(fset,logSet);
  CloseFile(fset);
end;

procedure TFormSetting.UpdateInt;
begin
  EditLogFileName.Text:=logSet.logFileName;
  SpinEditNumThread.Value:=logSet.numberOfThread;
  SpinEditTimeLife.Value:=logSet.OldClearTime;
end;

procedure TFormSetting.Button1Click(Sender: TObject);
begin
  if not isSetSaved then
    begin
      if MessageDlg('Изменения не сохранены. Закрыть без сохранения?',mtError,mbOkCancel,0)=mrOk then
        begin
          ReadSetting;
          Close;
        end;
    end else
      Close;
end;

procedure TFormSetting.SpinEditNumThreadChange(Sender: TObject);
var nn:byte;
begin
  isSetSaved:=False;
  try
    logSet.numberOfThread:=SpinEditNumThread.Value;
  except
    logSet.numberOfThread:=0;
  end;
  StringGridThreadLife.RowCount:=logSet.numberOfThread;
  for nn:=1 to logSet.numberOfThread do
    begin
      StringGridThreadLife.Cells[0,nn-1]:='Поток №'+IntToStr(nn);
      StringGridThreadLife.Cells[1,nn-1]:=IntToStr(logSet.ThreadLifeTime[nn]);
    end;
end;

procedure TFormSetting.Button2Click(Sender: TObject);
begin
  SaveSetting;
  ShowMessage('Установки сохранены.');
end;

procedure TFormSetting.FormShow(Sender: TObject);
begin
  ReadSetting;
  UpdateInt;
  isSetSaved:=True;
end;

procedure TFormSetting.EditLogFileNameChange(Sender: TObject);
begin
  isSetSaved:=False;
  logSet.logFileName:=EditLogFileName.Text;
end;

procedure TFormSetting.SpinEditTimeLifeChange(Sender: TObject);
begin
  isSetSaved:=False;
  logSet.OldClearTime:=SpinEditTimeLife.Value;
end;

procedure TFormSetting.StringGridThreadLifeDblClick(Sender: TObject);
var srow:integer;
begin
  isSetSaved:=False;
  srow:=StringGridThreadLife.Selection.Top;
  logSet.ThreadLifeTime[srow+1]:=StrToInt(InputBox('Введите значение:','Поток №'+IntToStr(srow+1),IntToStr(logSet.ThreadLifeTime[srow+1])));
  StringGridThreadLife.Cells[1,srow]:=IntToStr(logSet.ThreadLifeTime[srow+1]);
end;

end.
