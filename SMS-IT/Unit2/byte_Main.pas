unit byte_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TmainForm = class(TForm)
    Label4ask: TLabel;
    byteTXTvalue: TEdit;
    byteBits: TLabel;
    LabelBitsInfo: TLabel;
    LabelNOB: TLabel;
    LabelInfo: TLabel;
    ButtonCloseForm: TButton;
    procedure byteTXTvalueChange(Sender: TObject);
    procedure errorMessage;
    procedure byte2bit(inputValue:byte);
    procedure ShowResult;
    procedure ButtonCloseFormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    byteValue, numberOfBits:byte;
    bitArray:array[0..7] of byte;
  end;

var
  mainForm: TmainForm;

implementation

{$R *.dfm}

{��������� ����������� ���������� ����������}
procedure TmainForm.ShowResult;
var n0:byte;
begin
{������� ����� � ������� �������������� �����}
  bytebits.Caption:='';
{� ����� ��������� ��������� �������� ������������� ����� � ����������� �����}
  for n0:=0 to 7 do
    bytebits.Caption:=bytebits.Caption+IntToStr(bitArray[n0]);
{����������� ����� �������� ���������� ���}
  LabelNOB.Caption:=IntToStr(numberOfBits);
end;

{��������� ������� ����� � ������� ������������� � ������� �����
������� �������� - �������� ����� 0-255}
procedure TmainForm.byte2bit(inputValue:byte);
{���������� ����� ��� �������� ����� � ������� �������������,
����� ������ ��������� ������������� ��������������� ������� �
�������� ���������� �������������� ����� � ���� (�������� �������)
�� ���� ������ � �����}
const maskBitArray:array[0..7] of byte = (1,2,4,8,16,32,64,128);
var n0, nn:byte;
begin
  nn:=0;
  numberOfBits:=0;
  for n0:=0 to 7 do
    begin
      if (inputValue-nn) div maskBitArray[7-n0] >= 1 then
        begin
          bitArray[7-n0]:=1;
          nn:=nn+maskBitArray[7-n0];
          inc(numberOfBits); {��������� ���������� �������� ���������� �����}
        end else
          bitArray[7-n0]:=0;
    end;
end;

{��������� ������ ��������� �� ������. �������� � ��������� ��������� ��� ���
���������� �� ���������� � �������� ��������}
procedure TmainForm.errorMessage();
begin
  ShowMessage('�������� ������ ���� �������� � �� ��������� 255!');
  byteTXTvalue.Text:=IntToStr(byteValue);
end;

{��������� ����������� �� ������� ����� ������ (���������) � ���������� ������}
procedure TmainForm.byteTXTvalueChange(Sender: TObject);
var tempValue:integer;
begin
  if Length(byteTXTvalue.Text)>0 then            {���� ��������� ���� �� ������}
    try                                          {�������� ������������� ����� � ����� �������� ������ �����}
      tempValue:=StrToInt(byteTXTvalue.Text);
      if tempValue>255 then errorMessage else    {��������� �������� ���������� ����� �� ���������� �����������}
        begin
          byteValue:=tempValue;                  {���� ��� � �������, ���������� ������ � ������� ���������}
          byte2bit(byteValue);
          ShowResult;
        end;
    except                                       {����� ��������� �� ������}
      errorMessage;
    end else
      begin                                      {���� ���� ����� ������� - ������������� 0 ��������}
        bytebits.Caption:='00000000';
        LabelNOB.Caption:='0';
      end;
end;

procedure TmainForm.ButtonCloseFormClick(Sender: TObject);
begin
  Close;                                         {��������� �����}
end;

{��� ����� �������� ����� ����� ���� ����������� �������� ���������� ������ �����,
�.�. ��������� ����������� ����� �������� �������� �� �������� � � ������ ����������
��������� ����� ������������� � �������� 255, �� ��� �� "���������" ���.}

end.
