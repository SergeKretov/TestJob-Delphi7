program nob;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var inputByte, nn, nob0:byte;
    eop: boolean;

begin
  { TODO -oUser -cConsole Main : Insert code here }
  eop:=false;
  while not eop do
    begin
      write('Enter number from 1 to 255 for calc or 0 for exit: ');
      readln(inputByte);
      if inputByte = 0 then eop:=true else
        begin
          nob0:=0;
          for nn:=0 to 7 do
            if (inputByte and (1 shl nn)) <> 0 then inc(nob0);
          writeln('Number of bits: '+inttostr(nob0));
        end;
    end;
end.
 