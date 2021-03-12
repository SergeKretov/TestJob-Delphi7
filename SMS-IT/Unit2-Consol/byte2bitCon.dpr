program byte2bitCon;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const maskBitArray:array[0..7] of byte = (1,2,4,8,16,32,64,128);
var n0, nn, NoB, nnByte:byte;

begin
  { Консольный вариант подсчета установленных бит в байте
  максимально оптимальный по быстродействию }
  write ('Enter number from 0 to 255:');
  readln(nnByte);
  nn:=0;
  NoB:=0;
  for n0:=0 to 7 do
    if (nnByte-nn) div maskBitArray[7-n0] >= 1 then
      begin
        nn:=nn+maskBitArray[7-n0];
        inc(NoB);
      end;
  write('Number of bits in '+IntToStr(nnByte)+' is '+IntToStr(NoB));
  readln;
end.
