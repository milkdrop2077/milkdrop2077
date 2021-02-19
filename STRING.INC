////////////////////////////////////////////////////////////begin of string functions/////////////////////////////////////////////////////////


// custom POS, 6x times faster than VCL
function TDPosCh(aCh: AnsiChar; const S: String): Integer;
var
  i: Integer;
begin
  Result := 0;
  for i := 1 to Length(S) do if (S[i] = aCh) then begin
      Result := i;
      Break;
   end;
end;


// custom StringReplace, UP to x200 faster than VCL
Function NewStringReplace(const S, OldPattern, NewPattern: string;  Flags: TReplaceFlags): string;
var
  OldPat,Srch: string; // Srch and Oldp can contain uppercase versions of S,OldPattern
  PatLength,NewPatLength,P,Cnt,PatCount,PrevP: Integer;
  c,d: pchar;
begin
  PatLength:=Length(OldPattern);
  if PatLength=0 then begin
    Result:=S;
    exit;
  end;

  if rfIgnoreCase in Flags then begin
    Srch:=AnsiUpperCase(S);
    OldPat:=AnsiUpperCase(OldPattern);
  end else begin
    Srch:=S;
    OldPat:=OldPattern;
  end;

  PatLength:=Length(OldPat);
  if Length(NewPattern)=PatLength then begin
    //Result length will not change
    Result:=S;
    P:=1;
    repeat
      P:=PosEx(OldPat,Srch,P);  //use StrUtils,
      if P>0 then begin
        move(NewPattern[1],Result[P],PatLength);
        if not (rfReplaceAll in Flags) then exit;
        inc(P,PatLength);
      end;
    until p=0;
  end else begin
    //Different pattern length -> Result length will change
    //To avoid creating a lot of temporary strings, we count how many
    //replacements we're going to make.
    P:=1; PatCount:=0;
    repeat
      P:=PosEx(OldPat,Srch,P);
      if P>0 then begin
        inc(P,PatLength);
        inc(PatCount);
        if not (rfReplaceAll in Flags) then break;
      end;
    until p=0;
    if PatCount=0 then begin
      Result:=S;
      exit;
    end;
    NewPatLength:=Length(NewPattern);
    SetLength(Result,Length(S)+PatCount*(NewPatLength-PatLength));
    P:=1; PrevP:=0;
    c:=pchar(Result); d:=pchar(S);
    repeat
      P:=PosEx(OldPat,Srch,P);
      if P>0 then begin
        Cnt:=P-PrevP-1;
        if Cnt>0 then begin
          Move(d^,c^,Cnt);
          inc(c,Cnt);
          inc(d,Cnt);
        end;
        if NewPatLength>0 then begin
          Move(NewPattern[1],c^,NewPatLength);
          inc(c,NewPatLength);
        end;
        inc(P,PatLength);
        inc(d,PatLength);
        PrevP:=P-1;
        if not (rfReplaceAll in Flags) then break;
      end;
    until p=0;
    Cnt:=Length(S)-PrevP;
    if Cnt>0 then Move(d^,c^,Cnt);
  end;
end;


// showmessage(inttostr(LastCharPos('fRating=1.=000','='))); find last '=' pos = 11
function LastCharPos(const S: string; const Chr: char): integer;
var
  i: Integer;
begin
  result := 0;
  for i := length(S) downto 1 do
    if S[i] = Chr then
    begin
      result := i;
      break; // or Exit; if you prefer that
    end;
end;


function ExtractNumberInString(sChaine:String):String ;
var
    i,ega: Integer ;
begin
    Result := '' ;
    ega :=  LastCharPos(sChaine,'=');
    for i := ega to length(sChaine) do
    begin
        if sChaine[ i ] in ['0'..'9','.'] then
        Result := Result + sChaine[ i ] {//} else  Result := Result + ' '; //else  Result := Result + '@';
    end ;
end ;


function IsStrANumber(const S: string): Boolean;
var
  P: PChar;
begin
  P      := PChar(S);
  Result := False;
  while P^ <> #0 do
  begin
    if not (P^ in ['0'..'9']) then Exit;
    Inc(P);
  end;
  Result := True;
end;


// round decimal number x.xxxxxx to x.xx
Function RoundingUserDefineDecaimalPart(FloatNum: Double; NoOfDecPart: integer): Double;
Var
     ls_FloatNumber: String;
Begin
     ls_FloatNumber := FloatToStr(FloatNum);
     IF Pos('.', ls_FloatNumber) > 0 Then
          Result := StrToFloat
            (copy(ls_FloatNumber, 1, Pos('.', ls_FloatNumber) - 1) + '.' + copy
                 (ls_FloatNumber, Pos('.', ls_FloatNumber) + 1, NoOfDecPart))
     Else
          Result := FloatNum;
End;

// Find Next Position
function NthPos(TheSubString: String; TheString: String; N: integer): integer;
var
Temp: integer;
begin
if (Pos(TheSubString, TheString) = 0) then
Result:= 0
else
if (N < 1) then
Result:= 0
else
if (N = 1) then
Result:= Pos(TheSubString, TheString)
else
begin
Temp:= NthPos(TheSubString, Copy(TheString, Pos(TheSubString, TheString)
+ 1, MaxInt), N - 1);
if (Temp = 0) then
Result:= 0
else
Result:= Pos(TheSubString, TheString) + Temp;
end;
end;


function ExtractTextBetween(const Input, Delim1, Delim2: string): string;
var
  aPos, bPos: Integer;
begin
  result := '';
  aPos := Pos(Delim1, Input);
  if aPos > 0 then begin
    bPos := PosEx(Delim2, Input, aPos + Length(Delim1));
    if bPos > 0 then begin
      result := Copy(Input, aPos + Length(Delim1), bPos - (aPos + Length(Delim1)));
    end;
  end;
end;


// reduce string length ex : abcdefghijkl to abc...jkl
Function shortstr(ss:string):string;
var s : integer;
    shst : string;
  begin
   s := length(ss);
   shst := ss[1]+ss[2]+ss[3]+ss[4]+ss[5]+ss[6]+ss[7]+ss[8]+ss[9]+'...'
           +ss[s-9]+ss[s-8]+ss[s-7]+ss[s-6]+ss[s-5]+ss[s-4]+ss[s-3]+ss[s-2]+ss[s-1]+ss[s];
  result := shst;
end;

////////////////////////////////////////////////////////////end of string functions/////////////////////////////////////////////////////////     