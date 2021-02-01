{
MilkDrop2077 source code. Coded with Delphi 7. Probably works on newer and older versions too.
No specials components or packages needed to compile, everything is standard.
https://github.com/milkdrop2077
https://twitter.com/milkdrop2077
milkdrop2077@gmail.com
Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0) © 2021

update v1.0.3 2021/02/01 :
-bug fix in MILKRANDOMALL, more break added if no per_frame_ lines found.
-bug fix in MILKFLOAT3, check if there is any letters then break.

update v1.0.2 2021/01/28 :
-bug fix when writing PSVERSION=, PSVERSION_WARP=, PSVERSION_COMP=.
}
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, FileCtrl, StrUtils, Math, CheckLst;

type
  TForm1 = class(TForm)
    Image1: TImage;
    ImgINPUT: TImage;
    ImgOUTPUT: TImage;
    ImgNUMBER: TImage;
    ImgRRR1: TImage;
    ImgRRR2: TImage;
    ImgRRR3: TImage;
    ImgRRR4: TImage;
    ImgRRR5: TImage;
    ImgRRR1B: TImage;
    ImgRRR2B: TImage;
    ImgRRR3B: TImage;
    ImgRRR4B: TImage;
    ImgRRR5B: TImage;
    ImgGO: TImage;
    ImgOPTIONS: TImage;
    ImgABOUT: TImage;
    ImgEXIT: TImage;
    ImageP01: TImage;
    ImageP02: TImage;
    ImageP03: TImage;
    ImageP04: TImage;
    ImageP05: TImage;
    ImageP06: TImage;
    ImageP07: TImage;
    ImageP12: TImage;
    ImageP08: TImage;
    ImageP09: TImage;
    ImageP10: TImage;
    ImageP11: TImage;
    ImageP13: TImage;
    Img100: TImage;
    LabelINPUT: TLabel;
    LabelOUTPUT: TLabel;
    LabelFound: TLabel;
    LabelCreated: TLabel;
    LabelLVL1: TLabel;
    LabelLVL2: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Label2: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    LabelChance: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label7: TLabel;
    LabelValue: TLabel;
    Label9: TLabel;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Image2: TImage;
    Edit2: TEdit;
    Label4: TLabel;
    CheckBox7: TCheckBox;
    LabelT: TLabel;
    Label10: TLabel;
    Panel6: TPanel;
    LabelWC: TLabel;
    CheckListBox1: TCheckListBox;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgRRR1Click(Sender: TObject);
    procedure ImgRRR1BClick(Sender: TObject);
    procedure ImgRRR2Click(Sender: TObject);
    procedure ImgRRR2BClick(Sender: TObject);
    procedure ImgRRR3Click(Sender: TObject);
    procedure ImgRRR3BClick(Sender: TObject);
    procedure ImgRRR4Click(Sender: TObject);
    procedure ImgRRR4BClick(Sender: TObject);
    procedure ImgRRR5Click(Sender: TObject);
    procedure ImgRRR5BClick(Sender: TObject);
    procedure ImgEXITMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Img100Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1MouseLeave(Sender: TObject);
    procedure ImgINPUTClick(Sender: TObject);
    procedure ImgOUTPUTClick(Sender: TObject);
    procedure ImgABOUTClick(Sender: TObject);
    procedure ImgGOClick(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure ImgOPTIONSMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckListBox1ClickCheck(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
Form1: TForm1;
  
hwndRessource:HRSRC;
tailleRes:integer;
ptrRessource:PRGNDATA;
hwndregion:hrgn;
sel:TRect;

rgnINPUT: HRGN;
rgnOUTPUT: HRGN;
rgnNUMBER: HRGN;
rgnRRR1: HRGN;
rgnRRR2: HRGN;
rgnRRR3: HRGN;
rgnRRR4: HRGN;
rgnRRR5: HRGN;
rgnGO: HRGN;
rgnSUPPORT: HRGN;
rgnABOUT: HRGN;
rgnEXIT: HRGN;
rgnMILK: HRGN;

ChoixRepertoire : string;
ChoixRepertoire2 : string;
ChoixRepertoire3 : string;
x, XXXX, RANDOMZ, L, LWC, total, total2, lastt, lasttt : integer;
s : string;

ListFiles: TStringList;
ListFilesWC: TStringList;
ListTEMP: TStringList;
ListMilk: TStringList;
ListMilk2: TStringList;
ListMilk3: TStringList;
PS, PSW, PSC : integer;
numberz,numberz2,numberz3 : tstringlist;

const
ForceFLOT3 : array[1..3] of string = ('ret -= float3(1,0,0); // MilkDrop 2077','ret -= float3(0,1,0); // MilkDrop 2077','ret -= float3(0,0,1); // MilkDrop 2077');

implementation

{$R *.dfm}
{$R regions.RES} // for the area
{$R milk.RES} // for the kad effect


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


////////////////////////////////////////////////////////////end of string functions/////////////////////////////////////////////////////////


// Areas were created with Generateur_regions and Generateur_regions_poly from HolyView
// the the region files are ine the regions.RES
function CreerRgnFromRes(NomRes:string;TypeRes:PAnsiChar):HRGN;
var
  hwndRessource:HRSRC;
  tailleRes:integer;
  ptrRessource:PRGNDATA;
begin
  // Recherche de la ressource
  hwndRessource:=FindResource(0,PChar(NomRes),TypeRes);
  // Récupération de sa taille
  tailleRes:=SizeofResource(0,hwndRessource);
  // Récupération du pointeur sur le premier élément de la ressource
  ptrRessource:=LockResource(LoadResource(0,hwndRessource));
  // Création de la région à partir de la ressource
  result:=ExtCreateRegion(nil,tailleRes,ptrRessource^);
end;

// Random Level
procedure LVLRandom;
begin
if RANDOMZ = 0 then begin
Form1.LabelLVL1.Caption := 'Level 0 :';
Form1.LabelLVL2.Caption := 'Mashup code from  Frame / Pixel / Warp / Comp'+#13#10+'Randomize colors.';
Form1.LabelChance.Caption := '0';
Form1.CheckBox4.Checked := true;
Form1.Label6.Visible := false;
Form1.Panel4.Visible := false;
Form1.Panel5.Visible := false;
Form1.Label7.Visible := false;
Form1.Label9.Visible := false;
Form1.LabelValue.Visible := false;
Form1.LabelChance.Visible := false;
Form1.Label5.Font.Color := clRed;
Form1.Label5.Caption := 'no values will be changed';
Form1.Panel1.Repaint;
end;

if RANDOMZ = 1 then begin
Form1.LabelLVL1.Caption := 'Level 1 :';
Form1.LabelLVL2.Caption := '20% chances of randomizing values up to + or - 10%'+#13#10+'Randomize colors.';
Form1.LabelChance.Caption := '20';
Form1.LabelValue.Caption := '10';
Form1.CheckBox2.Checked := true;
Form1.Label6.Visible := true;
Form1.Panel4.Visible := true;
Form1.Panel5.Visible := true;
Form1.Label7.Visible := true;
Form1.Label9.Visible := true;
Form1.LabelValue.Visible := true;
Form1.LabelChance.Visible := true;
Form1.Label5.Font.Color := $00EBC1FF;
Form1.Label5.Caption := '% chances that values will be changed';
end;

if RANDOMZ = 2 then begin
Form1.LabelLVL1.Caption := 'Level 2 :';
Form1.LabelLVL2.Caption := '30% chances of randomizing values up to + or - 20%'+#13#10+'Randomize colors.';
Form1.CheckBox2.Checked := true;
Form1.LabelChance.Caption := '30';
Form1.LabelValue.Caption := '20';
end;

if RANDOMZ = 3 then begin
Form1.LabelLVL1.Caption := 'Level 3 :';
Form1.LabelLVL2.Caption := 'Mashup code from Warp / Comp'+#13#10+'20% chances of randomizing values up to + or - 10%'+#13#10+'Randomize colors.';
Form1.LabelChance.Caption := '20';
Form1.LabelValue.Caption := '10';
Form1.CheckBox3.Checked := true;
end;

if RANDOMZ = 4 then begin
Form1.LabelLVL1.Caption := 'Level 4 :';
Form1.LabelLVL2.Caption := 'Mashup code from  Frame / Pixel / Warp / Comp'+#13#10+'30% chances of randomizing values up to + or - 20%'+#13#10+'Randomize colors.';
Form1.LabelChance.Caption := '30';
Form1.LabelValue.Caption := '20';
Form1.CheckBox4.Checked := true;
Form1.CheckBox6.Checked := false;
end;

if RANDOMZ = 5 then begin
Form1.LabelLVL1.Caption := 'Level 5 :';
Form1.LabelLVL2.Caption := 'Mashup code from  Frame / Pixel / Warp / Comp'+#13#10+'30% chances of randomizing values up to + or - 25%'+#13#10+'Randomize colors + add extra effect!';
Form1.LabelChance.Caption := '30';
Form1.LabelValue.Caption := '25';
Form1.CheckBox4.Checked := true;
Form1.CheckBox6.Checked := true;
end;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
        // Création de la fenêtre non rectangulaire
        hwndregion:=CreerRgnFromRes('regfond',RT_RCDATA);
        // Récupération de la taille rectangulaire de la région
        GetRgnBox(hwndregion,sel);
        // Ajuste la taille de la fenêtre
        SetWindowPos(form1.Handle,HWND_TOP,0,0,sel.Right-sel.Left,sel.Bottom,SWP_NOMOVE or SWP_NOOWNERZORDER);
        // Change la forme de la fenêtre à partir de la région
        SetWindowRgn(form1.Handle,hwndregion,true);
        //hwndregion:=CreerRgnFromRes('REGION',RT_RCDATA);

        rgnINPUT:=CreerRgnFromRes('RGN1',RT_RCDATA);
        rgnOUTPUT:=CreerRgnFromRes('RGN2',RT_RCDATA);
        rgnNUMBER:=CreerRgnFromRes('RGN3',RT_RCDATA);
        rgnRRR1:=CreerRgnFromRes('RGN4',RT_RCDATA);
        rgnRRR2:=CreerRgnFromRes('RGN5',RT_RCDATA);
        rgnRRR3:=CreerRgnFromRes('RGN6',RT_RCDATA);
        rgnRRR4:=CreerRgnFromRes('RGN7',RT_RCDATA);
        rgnRRR5:=CreerRgnFromRes('RGN8',RT_RCDATA);
        rgnGO:=CreerRgnFromRes('RGN9',RT_RCDATA);
        rgnSUPPORT:=CreerRgnFromRes('RGN10',RT_RCDATA);
        rgnABOUT:=CreerRgnFromRes('RGN11',RT_RCDATA);
        rgnEXIT:=CreerRgnFromRes('RGN12',RT_RCDATA);
        rgnMILK:=CreerRgnFromRes('RGN13',RT_RCDATA);

        ChoixRepertoire := ExtractFilePath(Application.ExeName);
        XXXX := 100;
        RANDOMZ := 0;
        LVLRandom;

        form1.DoubleBuffered:= true;
        Panel1.DoubleBuffered := true;
end;

// to move the main window
procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
form1.Perform(WM_SYSCOMMAND, $F012, 0);
end;


procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if PtInRegion(rgnINPUT,X,Y)=true then ImgINPUT.Visible := true else ImgINPUT.Visible := false;
if PtInRegion(rgnOUTPUT,X,Y)=true then ImgOUTPUT.Visible := true else ImgOUTPUT.Visible := false;
if PtInRegion(rgnNUMBER,X,Y)=true then ImgNUMBER.Visible := true else begin ImgNUMBER.Visible := false; end;
if PtInRegion(rgnRRR1,X,Y)=true then ImgRRR1.Visible := true else ImgRRR1.Visible := false;
if PtInRegion(rgnRRR2,X,Y)=true then ImgRRR2.Visible := true else ImgRRR2.Visible := false;
if PtInRegion(rgnRRR3,X,Y)=true then ImgRRR3.Visible := true else ImgRRR3.Visible := false;
if PtInRegion(rgnRRR4,X,Y)=true then ImgRRR4.Visible := true else ImgRRR4.Visible := false;
if PtInRegion(rgnRRR5,X,Y)=true then ImgRRR5.Visible := true else ImgRRR5.Visible := false;
if PtInRegion(rgnGO,X,Y)=true then ImgGO.Visible := true else ImgGO.Visible := false;
if PtInRegion(rgnSUPPORT,X,Y)=true then ImgOPTIONS.Visible := true else begin if Panel1.Visible = false then ImgOPTIONS.Visible := false; end;
if PtInRegion(rgnABOUT,X,Y)=true then ImgABOUT.Visible := true else ImgABOUT.Visible := false;
if PtInRegion(rgnEXIT,X,Y)=true then ImgEXIT.Visible := true else ImgEXIT.Visible := false;
end;



procedure TForm1.ImgRRR1Click(Sender: TObject);
begin
if ImgRRR1B.Visible = false then begin ImgRRR1B.Visible := true; RANDOMZ := 1; LVLRandom; exit; end;
if ImgRRR2B.Visible = false then begin ImgRRR2B.Visible := true; RANDOMZ := 2; LVLRandom; exit; end;
if ImgRRR3B.Visible = false then begin ImgRRR3B.Visible := true; RANDOMZ := 3; LVLRandom; exit; end;
if ImgRRR4B.Visible = false then begin ImgRRR4B.Visible := true; RANDOMZ := 4; LVLRandom; exit; end;
if ImgRRR5B.Visible = false then begin ImgRRR5B.Visible := true; RANDOMZ := 5; LVLRandom; exit; end;

end;
procedure TForm1.ImgRRR1BClick(Sender: TObject);
begin
if ImgRRR5B.Visible = true then begin ImgRRR5B.Visible := false; RANDOMZ := 4; LVLRandom; exit; end;
if ImgRRR4B.Visible = true then begin ImgRRR4B.Visible := false; RANDOMZ := 3; LVLRandom; exit; end;
if ImgRRR3B.Visible = true then begin ImgRRR3B.Visible := false; RANDOMZ := 2; LVLRandom; exit; end;
if ImgRRR2B.Visible = true then begin ImgRRR2B.Visible := false; RANDOMZ := 1; LVLRandom; exit; end;
if ImgRRR1B.Visible = true then begin ImgRRR1B.Visible := false; RANDOMZ := 0; LVLRandom; exit; end;
end;
procedure TForm1.ImgRRR2Click(Sender: TObject);
begin
if ImgRRR1B.Visible = false then begin ImgRRR1B.Visible := true; RANDOMZ := 1; LVLRandom; exit; end;
if ImgRRR2B.Visible = false then begin ImgRRR2B.Visible := true; RANDOMZ := 2; LVLRandom; exit; end;
if ImgRRR3B.Visible = false then begin ImgRRR3B.Visible := true; RANDOMZ := 3; LVLRandom; exit; end;
if ImgRRR4B.Visible = false then begin ImgRRR4B.Visible := true; RANDOMZ := 4; LVLRandom; exit; end;
if ImgRRR5B.Visible = false then begin ImgRRR5B.Visible := true; RANDOMZ := 5; LVLRandom; exit; end;
end;
procedure TForm1.ImgRRR2BClick(Sender: TObject);
begin
if ImgRRR5B.Visible = true then begin ImgRRR5B.Visible := false; RANDOMZ := 4; LVLRandom; exit; end;
if ImgRRR4B.Visible = true then begin ImgRRR4B.Visible := false; RANDOMZ := 3; LVLRandom; exit; end;
if ImgRRR3B.Visible = true then begin ImgRRR3B.Visible := false; RANDOMZ := 2; LVLRandom; exit; end;
if ImgRRR2B.Visible = true then begin ImgRRR2B.Visible := false; RANDOMZ := 1; LVLRandom; exit; end;
if ImgRRR1B.Visible = true then begin ImgRRR1B.Visible := false; RANDOMZ := 0; LVLRandom; exit; end;
end;
procedure TForm1.ImgRRR3Click(Sender: TObject);
begin
if ImgRRR1B.Visible = false then begin ImgRRR1B.Visible := true; RANDOMZ := 1; LVLRandom; exit; end;
if ImgRRR2B.Visible = false then begin ImgRRR2B.Visible := true; RANDOMZ := 2; LVLRandom; exit; end;
if ImgRRR3B.Visible = false then begin ImgRRR3B.Visible := true; RANDOMZ := 3; LVLRandom; exit; end;
if ImgRRR4B.Visible = false then begin ImgRRR4B.Visible := true; RANDOMZ := 4; LVLRandom; exit; end;
if ImgRRR5B.Visible = false then begin ImgRRR5B.Visible := true; RANDOMZ := 5; LVLRandom; exit; end;
end;
procedure TForm1.ImgRRR3BClick(Sender: TObject);
begin
if ImgRRR5B.Visible = true then begin ImgRRR5B.Visible := false; RANDOMZ := 4; LVLRandom; exit; end;
if ImgRRR4B.Visible = true then begin ImgRRR4B.Visible := false; RANDOMZ := 3; LVLRandom; exit; end;
if ImgRRR3B.Visible = true then begin ImgRRR3B.Visible := false; RANDOMZ := 2; LVLRandom; exit; end;
if ImgRRR2B.Visible = true then begin ImgRRR2B.Visible := false; RANDOMZ := 1; LVLRandom; exit; end;
if ImgRRR1B.Visible = true then begin ImgRRR1B.Visible := false; RANDOMZ := 0; LVLRandom; exit; end;
end;
procedure TForm1.ImgRRR4Click(Sender: TObject);
begin
if ImgRRR1B.Visible = false then begin ImgRRR1B.Visible := true; RANDOMZ := 1; LVLRandom; exit; end;
if ImgRRR2B.Visible = false then begin ImgRRR2B.Visible := true; RANDOMZ := 2; LVLRandom; exit; end;
if ImgRRR3B.Visible = false then begin ImgRRR3B.Visible := true; RANDOMZ := 3; LVLRandom; exit; end;
if ImgRRR4B.Visible = false then begin ImgRRR4B.Visible := true; RANDOMZ := 4; LVLRandom; exit; end;
if ImgRRR5B.Visible = false then begin ImgRRR5B.Visible := true; RANDOMZ := 5; LVLRandom; exit; end;
end;
procedure TForm1.ImgRRR4BClick(Sender: TObject);
begin
if ImgRRR5B.Visible = true then begin ImgRRR5B.Visible := false; RANDOMZ := 4; LVLRandom; exit; end;
if ImgRRR4B.Visible = true then begin ImgRRR4B.Visible := false; RANDOMZ := 3; LVLRandom; exit; end;
if ImgRRR3B.Visible = true then begin ImgRRR3B.Visible := false; RANDOMZ := 2; LVLRandom; exit; end;
if ImgRRR2B.Visible = true then begin ImgRRR2B.Visible := false; RANDOMZ := 1; LVLRandom; exit; end;
if ImgRRR1B.Visible = true then begin ImgRRR1B.Visible := false; RANDOMZ := 0; LVLRandom; exit; end;
end;
procedure TForm1.ImgRRR5Click(Sender: TObject);
begin
if ImgRRR1B.Visible = false then begin ImgRRR1B.Visible := true; RANDOMZ := 1; LVLRandom; exit; end;
if ImgRRR2B.Visible = false then begin ImgRRR2B.Visible := true; RANDOMZ := 2; LVLRandom; exit; end;
if ImgRRR3B.Visible = false then begin ImgRRR3B.Visible := true; RANDOMZ := 3; LVLRandom; exit; end;
if ImgRRR4B.Visible = false then begin ImgRRR4B.Visible := true; RANDOMZ := 4; LVLRandom; exit; end;
if ImgRRR5B.Visible = false then begin ImgRRR5B.Visible := true; RANDOMZ := 5; LVLRandom; exit; end;
end;
procedure TForm1.ImgRRR5BClick(Sender: TObject);
begin
if ImgRRR5B.Visible = true then begin ImgRRR5B.Visible := false; RANDOMZ := 4; LVLRandom; exit; end;
if ImgRRR4B.Visible = true then begin ImgRRR4B.Visible := false; RANDOMZ := 3; LVLRandom; exit; end;
if ImgRRR3B.Visible = true then begin ImgRRR3B.Visible := false; RANDOMZ := 2; LVLRandom; exit; end;
if ImgRRR2B.Visible = true then begin ImgRRR2B.Visible := false; RANDOMZ := 1; LVLRandom; exit; end;
if ImgRRR1B.Visible = true then begin ImgRRR1B.Visible := false; RANDOMZ := 0; LVLRandom; exit; end;
end;


// To find milk files in folder + sub-folders
procedure RCGen2(Path, Mask: String; List: TStrings; SubFolder: Boolean);
var
  Attrib, k: Integer;
  Search: TSearchRec;
begin
  Attrib := faArchive + faReadOnly + faHidden;
  if Path[Length(Path)] <> '\' then Path := Path + '\';

  with TStringList.Create do
  try
    CommaText := Mask;
    for k := 0 to Count - 1 do

  if FindFirst(Path + Strings[k], Attrib, Search) = 0 then
      repeat
      inc(x);
      s := inttostr(x);
      List.Add(Path +Search.Name)
      until FindNext(Search) <> 0;
      FindClose(Search);
      finally Free end;

  if SubFolder then
  begin
    if FindFirst(Path + '*.*', faDirectory, Search) = 0 then
    begin
      repeat
        if ((Search.Attr and faDirectory) = faDirectory) and
          (Search.Name[1] <> '.') then
          RCGen2(Path + Search.Name, Mask, List, SubFolder);
      until FindNext(Search) <> 0;
      FindClose(Search);
    end;
  end;
end;


procedure TForm1.ImgEXITMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
form1.Close;
end;

procedure TForm1.Img100Click(Sender: TObject);
begin
edit1.Visible := true;
edit1.SetFocus;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  // #8 is Backspace
  if not (Key in [#8, '0'..'9']) then begin
    //ShowMessage('Invalid key');
    //Discard the key
    Key := #0;
  end;
end;

//un-focus Edit1
procedure TForm1.Edit1MouseLeave(Sender: TObject);
begin
ActiveControl:=nil;
//Windows.SetFocus(0);
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

// Select INPUT folder
procedure TForm1.ImgINPUTClick(Sender: TObject);
begin
If SelectDirectory('Select Presets (*.milk) Folder ...','',ChoixRepertoire)
Then begin
if ChoixRepertoire = '' then exit;  // in case empty, then stop
if length(ChoixRepertoire) > 30 then // in case long then reduce it
LabelINPUT.Caption := shortstr(ChoixRepertoire) else LabelINPUT.Caption := ChoixRepertoire;
end;
if LabelINPUT.Caption = '' then exit;
ListFiles := TStringList.Create;
RCGen2(ChoixRepertoire, '*.milk', ListFiles, true);

x:= ListFiles.Count;
if x < 1 then LabelFound.Font.Color := clRed else LabelFound.Font.Color := clLime;
if x > 1 then LabelFound.Caption := inttostr(x) + ' Presets found.' else LabelFound.Caption := inttostr(x) + ' Preset found.';
if LabelOUTPUT.Caption = '' then begin
if length(ChoixRepertoire) > 25 then // in case long then reduce it
LabelOUTPUT.Caption := shortstr(ChoixRepertoire)+'MASHED' else LabelOUTPUT.Caption := ChoixRepertoire+'MASHED';
ChoixRepertoire2 := ChoixRepertoire+'MASHED';
end;
end;

// Select OUTPUT folder
procedure TForm1.ImgOUTPUTClick(Sender: TObject);
begin
ChoixRepertoire2 := ExtractFilePath(Application.ExeName);
If SelectDirectory('Select Destination Folder ...','',ChoixRepertoire2)
Then begin
if ChoixRepertoire2 = '' then exit;  // in case empty, then stop
if length(ChoixRepertoire2) > 30 then // in case long then reduce it
LabelOUTPUT.Caption := shortstr(ChoixRepertoire2) else LabelOUTPUT.Caption := ChoixRepertoire2;
end;
end;


procedure TForm1.ImgABOUTClick(Sender: TObject);
begin
//about box ;)
end;



//Mashup Warp code + Comp code ONLY
procedure MILKRANDOM;
var
i,j,R,RWC : integer;
psv : string;
begin

    R := Random(L);
    ListTEMP.LoadFromFile(ListFiles.Strings[R]);
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('warp_', ListTEMP[i])<>0 then break; // go until warp_ found
    if Pos('comp_', ListTEMP[i])<>0 then break; // bug if no warp code in preset
    ListMilk.Add(ListTEMP[i]);
    end;
    ListTEMP.Clear;
    ListMilk3.Add('Code from : '+extractfilename(ListFiles.Strings[R]));

    R := Random(L);
    if Form1.LabelWC.Font.Color = cllime then begin
    RWC := Random(LWC);
    ListTEMP.LoadFromFile(ListFilesWC.Strings[RWC]);
    end else begin ListTEMP.LoadFromFile(ListFiles.Strings[R]); end;
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('warp_', ListTEMP[i])<>0 then ListMilk.Add(ListTEMP[i]);
    end;
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('PSVERSION_WARP=', ListTEMP[i])<>0 then begin psv := ListTEMP[i]; PSW := strtoint(psv[16]); break;
    end;end;
    ListTEMP.Clear;
    if Form1.LabelWC.Font.Color = cllime then ListMilk3.Add('Warp code from : '+extractfilename(ListFilesWC.Strings[RWC])) else ListMilk3.Add('Warp code from : '+extractfilename(ListFiles.Strings[R]));

    R := Random(L);
    if Form1.LabelWC.Font.Color = cllime then begin
    RWC := Random(LWC);
    ListTEMP.LoadFromFile(ListFilesWC.Strings[RWC]);
    end else begin ListTEMP.LoadFromFile(ListFiles.Strings[R]); end;
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('comp_', ListTEMP[i])<>0 then ListMilk.Add(ListTEMP[i]);
    end;
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('PSVERSION_COMP=', ListTEMP[i])<>0 then begin psv := ListTEMP[i]; PSC := strtoint(psv[16]); break;
    end;end;
    ListTEMP.Clear;
    if Form1.LabelWC.Font.Color = cllime then ListMilk3.Add('Comp code from : '+extractfilename(ListFilesWC.Strings[RWC])) else ListMilk3.Add('Comp code from : '+extractfilename(ListFiles.Strings[R]));

    //Clean preset's pixel shader version
    for i := 0 to ListMilk.Count-1 do begin
    if Pos('[preset00]', ListMilk[i])<>0 then begin
    for j := 0 to i-1 do begin
    ListMilk.Delete(0);
    end;
    break;
    end;
    end;
end;


//Mashup Wave & Shape + Per Frame + Per Pixel + Warp code + Comp code
procedure MILKRANDOMALL;
var
i,j,R : integer;
psv : string;
begin

    R := Random(L);
    ListTEMP.LoadFromFile(ListFiles.Strings[R]);
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('per_frame_', ListTEMP[i])<>0 then break;
    if Pos('per_pixel_', ListTEMP[i])<>0 then break; // bug if no per_frame_ code in preset, update 1.0.3
    if Pos('warp_', ListTEMP[i])<>0 then break; // bug if no per_pixel_ code in preset
    if Pos('comp_', ListTEMP[i])<>0 then break; // bug if no warp_ code in preset
    ListMilk.Add(ListTEMP[i]);
    end;
    ListTEMP.Clear;
    ListMilk3.Add('Wave & Shape code from : '+extractfilename(ListFiles.Strings[R]));

    R := Random(L);
    ListTEMP.LoadFromFile(ListFiles.Strings[R]);
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('per_frame_', ListTEMP[i])<>0 then ListMilk.Add(ListTEMP[i]);
    end;
    ListTEMP.Clear;
    ListMilk3.Add('Per Frame code from : '+extractfilename(ListFiles.Strings[R]));

    R := Random(L);
    ListTEMP.LoadFromFile(ListFiles.Strings[R]);
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('per_pixel_', ListTEMP[i])<>0 then ListMilk.Add(ListTEMP[i]);
    end;
    ListTEMP.Clear;
    ListMilk3.Add('Per Pixel code from : '+extractfilename(ListFiles.Strings[R]));

    R := Random(L);
    ListTEMP.LoadFromFile(ListFiles.Strings[R]);
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('warp_', ListTEMP[i])<>0 then ListMilk.Add(ListTEMP[i]);
    end;
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('PSVERSION_WARP=', ListTEMP[i])<>0 then begin psv := ListTEMP[i]; PSW := strtoint(psv[16]); break;
    end;end;
    ListTEMP.Clear;
    ListMilk3.Add('Warp code from : '+extractfilename(ListFiles.Strings[R]));

    R := Random(L);
    ListTEMP.LoadFromFile(ListFiles.Strings[R]);
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('comp_', ListTEMP[i])<>0 then ListMilk.Add(ListTEMP[i]);
    end;
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('PSVERSION_COMP=', ListTEMP[i])<>0 then begin psv := ListTEMP[i]; PSC := strtoint(psv[16]); break;
    end;end;
    ListTEMP.Clear;
    ListMilk3.Add('Comp code from : '+extractfilename(ListFiles.Strings[R]));

    //Clean preset's pixel shader version
    for i := 0 to ListMilk.Count-1 do begin
    if Pos('[preset00]', ListMilk[i])<>0 then begin
    for j := 0 to i-1 do begin
    ListMilk.Delete(0);
    end;
    break;
    end;
    end;
end;


//MILKDROP Random values, main function :
procedure MILKDROP(const numberz: TStringList; const chance: integer; const change: integer; const startline: integer);
var
i, j, k, m, R, RC, RF, posx, declong, numlong : integer;
xxx : real;
s,ss,finale,cachefloat : string;
begin
total := 0;
total2 := 0;
for m := startline to numberz.Count-1 do begin
numberz2.Clear;
// add +' ' to multiply last number found
s:= ExtractNumberInString(numberz[m]+' ');
// if '.' found then begin ('.' = char 46)
if TDPosCh(Char(46),s) <> 0 then begin
total2 := total2+1;
try
//['0'..'9','-','+','.']; add to TStringList numberz ALL the numbers.
for j := 1 to length(s) do begin
k := j;
if s[j] in ['.'] then begin if not IsStrANumber(s[j+1]) then k := k+1; end; // check number after dot for bug : uv1.x // if s[j] in ['.'] then begin if not IsStrANumber(s[j+1]) then break; end;
if s[k] in ['0'..'9','.'] then ss := ss+ s[k] else begin numberz2.Add(ss); {form1.ListBox3.Items.Add(ss);} ss := ''; end; end; // ADD number to list numberz2
for I := numberz2.count - 1 downto 0 do begin if Trim(numberz2[I]) = '' then numberz2.Delete(I); end; //CLEAN
// Random %
R := Random(100);
if R < chance then begin
for I := 0 to numberz2.count-1 do // add to TStringList numberz2 all the numbers with a dot '.'
begin
if strtofloat(numberz2[I]) = 0 then break;
s := numberz2[I];
if s = '.' then break;
posx := TDPosCh(Char(46),s);
declong := length(s)-posx;
numlong := posx-1;

if posx <> 0 then begin
// Random 30%
RC := Random(change);
RF := Random(2);

// to FormatFloat correct lenght 1+XXX.XXX+1
cachefloat := '';
for k := 1 to numlong+1 do begin cachefloat := cachefloat+'#'; end;
cachefloat := cachefloat+'.';
for k := 1 to declong+1 do begin cachefloat := cachefloat+'#'; end;
xxx := strtofloat(numberz2[I]);
if RF = 0 then xxx := xxx+(xxx*RC/100) else xxx := xxx-(xxx*RC/100); // Random + or - up to 25%

s := FormatFloat(cachefloat, xxx);
if s[1] = '.' then s := '0'+s; // if .123 then = 0.123
finale := NewStringReplace(numberz3[m], numberz2[I], s,[rfReplaceAll, rfIgnoreCase]);
finale := NewStringReplace(finale, '00.', '0.',[rfReplaceAll, rfIgnoreCase]); // if 00.123 then = 0.123
numberz3[m] := finale;
total := total+1;
end;
end;
end;
except end;
end;
end;
lastt := total;
lasttt := total2;
end;


//Randomize colors : find and change all float3 values
procedure MILKFLOAT3(const numberz: TStringList);
var
a,b,c,i,j,start : integer;
s,ss,sss,t,finale: string;
label
FoundLetters;
begin

 for a := 1 to numberz.Count-1 do begin //loop
     if Pos('float3(', numberz[a]) or Pos('float3 (', numberz[a]) <>0 then begin  //find 'float3'
       sss := numberz[a];
          for b := 1 to 5 do begin     //try to find up to 5 'float3' strings in 1 string (s)
             c := NthPos('float3(',sss,b);  //function NthPos(TheSubString: String; TheString: String; N: integer): integer;
             if c <>0 then begin      //if found 'float3' then begin
             t := Copy(sss, c, length(sss)); //+6 start after 'float3'[6]
             s := ExtractTextBetween(t,'float3(',')');
             for j := 0 to length(s) do begin if s[ j ] in ['a' .. 'z' , 'A' .. 'Z'] then Goto FoundLetters else end ; //check if editable not like ex : float3(texsize.zw * 4, 0) or float3(q4,q5,q6);
             ss := floattostr(random(30)/10)+','+floattostr(random(30)/10)+','+floattostr(random(30)/10);
             finale := NewStringReplace(sss, s, ss,[rfReplaceAll, rfIgnoreCase]);
             sss := finale;
             ListMilk2[a] := sss;
             end;
             c := NthPos('float3 (',sss,b);
             if c <>0 then begin
             t := Copy(sss, c, length(sss)); //+6 start after 'float3'[6]
             s := ExtractTextBetween(t,'float3 (',')');
             for j := 0 to length(s) do begin if s[ j ] in ['a' .. 'z' , 'A' .. 'Z'] then Goto FoundLetters else end ; //check if editable not like ex : float3(texsize.zw * 4, 0) or float3(q4,q5,q6);
             ss := floattostr(random(30)/10)+','+floattostr(random(30)/10)+','+floattostr(random(30)/10);
             finale := NewStringReplace(sss, s, ss,[rfReplaceAll, rfIgnoreCase]);
             sss := finale;
             ListMilk2[a] := sss;
             end;
             FoundLetters : break;
end;
end;
end;
end;


//Force randomize colors : add float3 value at the end of comp
procedure FORCEMILKFLOAT3(const numberz: TStringList);
var
i,j : integer;
s: string;
found : boolean ;
begin
found := false;
Randomize;

for i := numberz.count - 1 downto 0 do begin // from bottom to top
if Pos('comp_', numberz[i])<>0 then begin    // search for comp_
if Pos('}', numberz[i])<>0 then begin        // search for }
s := ExtractTextBetween(numberz[i],'comp_','='); // extract comp # ex: comp_21=` > 21, s=21
for j := i to numberz.count - 1 do begin ListMilk2.Delete(I); end; // delet line
ListMilk2.Add('comp_'+s+'=`'+ForceFLOT3[RandomRange(1,4)]);       // 1 to 3 (4 not included)
ListMilk2.Add('comp_'+inttostr(strtoint(s)+1)+'=`}');          // add new line } with comp #+1
found := true;
end;
end;
if found then break; // if found and edited then exit
end;
end;


// Load Shader from Resource (kaleidoscope)
procedure LoadStringListFromResource(const ResName: string;SL : TStringList);
var
  RS: TResourceStream;
begin
  RS := TResourceStream.Create(HInstance, ResName, 'Text');
  try
    SL.LoadFromStream(RS);
  finally
    RS.Free;
  end;
end;


// Add one effect on comp shader_body
// 3 ways possible depending on the type of effect :
// on the top part (ex: split), bottom part (ex: brighten), or replace ALL the comp code (for kaleidoscope)
procedure ADDMILKEFFECT(const numberz: TStringList; const effect: string);
var i,j,x : integer;
s,st,sttemp,effectcomp : string;
efftop, effbottom, effall, shader, found : boolean ;
SALL : TStringList;
begin

efftop := false; //TOP
effbottom := false; //BOTTOM
effall := false; //ALL
shader := false;
found := false;
Randomize;
SALL := TStringList.Create;

if effect = 'brighten' then begin effbottom := true; effectcomp := 'ret = lerp(ret,2,GetPixel(uv).z*1.36); //MilkDrop2077 brighten effect' end;
if effect = 'brighten+' then begin effbottom := true; effectcomp := 'float3 avg_col = GetBlur2(uv);ret = abs(avg_col - ret)*6; //MilkDrop2077 brighten+ effect' end;
if effect = 'gamma' then begin effbottom := true; effectcomp := 'ret *= 1.99; //MilkDrop2077 gamma effect' end;
if effect = 'invert' then begin effbottom := true; effectcomp := 'ret = 1 - ret; //MilkDrop2077 invert effect' end;
if effect = 'kaleidoscope' then begin effall := true; end;
if effect = 'monochrome' then begin effbottom := true; effectcomp := 'ret = lum(ret); //MilkDrop2077 monochrome effect' end;
if effect = 'multiplicate' then begin efftop := true; effectcomp := 'uv = 1- abs( frac((uv-.5)*1.5 * 0.5 ) * 2 - 1.0 ); //MilkDrop2077 multiplicate effect' end;
if effect = 'rainbow' then begin effbottom := true; effectcomp := 'ret *= 1*normalize ((tex2D (sampler_noise_hq,(uv+q4/2)/6))); //MilkDrop2077 rainbow effect' end;
if effect = 'shadow' then begin effbottom := true; effectcomp := 'ret += pow(tex2D(sampler_main,float2(uv.x,1-uv.y)).yyy+tex2D(sampler_main,1-uv).yyy,float3(1,2,3)); //MilkDrop2077 shadow effect' end;
if effect = 'solarize' then begin effbottom := true; effectcomp := 'ret = ret*(1-ret)*4; //MilkDrop2077 solarize effect' end;
if effect = 'split' then begin efftop := true; effectcomp := 'uv = float2 (abs(uv.x-0.5), uv.y); //MilkDrop2077 split effect' end;
if effect = 'zoomed' then begin efftop := true; effectcomp := 'uv = 0.25 + 0.5*uv; //MilkDrop2077 zoomed effect' end;

if effall then begin // replace ALL COMP code
for i := numberz.count - 1 downto 0 do begin
if Pos('comp_', numberz[i])<>0 then numberz.Delete(I); end;// remove all the comp_ lines
LoadStringListFromResource('kaleidoscope',SALL); // Load kaleidoscope effect from RES
numberz.AddStrings(SALL); // add kaleidoscope effect
end;


if efftop then begin // ADD on the top part code
for i := 0 to numberz.count - 1 do begin  // from top to bottom
if Pos('comp_', numberz[i])<>0 then begin // search for comp_
if Pos('shader_body', numberz[i]) <>0 then shader := true;  // search for shader_body

if shader then begin x := Pos('{', numberz[i]);  // x = pos '{'
if x <>0 then begin
s := ExtractTextBetween(numberz[i],'comp_','='); // extract comp # ex: comp_21=` > 21, s=21
st := copy(numberz[i], x+1, length(numberz[i])-x); // st = string after '{' if any
sttemp := numberz[i];
Delete(sttemp, x+1, length(numberz[i])-x); // delete after '{' if any
numberz[i] := sttemp;

numberz.Insert(i+1,'comp_'+inttostr(strtoint(s)+1)+'=`'+effectcomp); // ADD new effect
numberz.Insert(i+2,'comp_'+inttostr(strtoint(s)+2)+'=`'+st); // ADD st = string after '{' if any

for j := i+3 to numberz.count - 1 do begin // add + 2 to all the comp number because +2 lines were added
x := Pos('comp_', numberz[j]);
if x <>0 then begin
s := ExtractTextBetween(numberz[j],'comp_','=');
sttemp := numberz[j];
Delete(sttemp, x+5, length(s));
s := inttostr(strtoint(s)+2); // + 2 because we added 2 lines : string after '{' + new effect
insert(s, sttemp, x+5);
numberz[j] := sttemp;
end;end;
exit;
end;
end;
end;
end;
end; //efftop

if effbottom then begin // ADD on the bottom part code
for i := numberz.count - 1 downto 0 do begin // from bottom to top
if Pos('comp_', numberz[i])<>0 then begin    // search for comp_
if Pos('}', numberz[i])<>0 then begin        // search for }
s := ExtractTextBetween(numberz[i],'comp_','='); // extract comp # ex: comp_21=` > 21, s=21
for j := i to numberz.count - 1 do begin numberz.Delete(I); end; // delet line
numberz.Add('comp_'+s+'=`'+effectcomp);                         // ADD new effect
numberz.Add('comp_'+inttostr(strtoint(s)+1)+'=`}');          // add new line } with comp #+1
found := true;
end;
end;
if found then break; // if found and edited then exit
end;
end;
end;


// GO
procedure TForm1.ImgGOClick(Sender: TObject);
var
i, j, m, z, X, R, RC, RF, posx, total, total2, start, declong : integer;
today : TDateTime;
xxx, zzz : real;
s,ss,finale : string;
addmilk : tstringlist;
choix: integer;
replace : boolean;
begin
if LabelFound.Font.Color = clRed then begin showmessage('Please select a valid INPUT presets folder first'); exit; end;
//Reset
if ImageP13.Visible = true then begin
LabelCreated.Caption := '';
ImageP01.Visible := false;
ImageP02.Visible := false;
ImageP03.Visible := false;
ImageP04.Visible := false;
ImageP05.Visible := false;
ImageP06.Visible := false;
ImageP07.Visible := false;
ImageP08.Visible := false;
ImageP09.Visible := false;
ImageP10.Visible := false;
ImageP11.Visible := false;
ImageP12.Visible := false;
ImageP13.Visible := false;
exit;
end;

if not directoryexists(ChoixRepertoire2) then CreateDir(ChoixRepertoire2);
if ChoixRepertoire2[Length(ChoixRepertoire2)] <> '\' then ChoixRepertoire2 := ChoixRepertoire2 + '\';
replace := false;

Randomize;
L := ListFiles.Count;
if LabelWC.Font.Color = cllime then LWC := ListFilesWC.Count;
ListTEMP := TStringList.Create;
ListMilk := TStringList.Create;
ListMilk2 := TStringList.Create;
ListMilk3 := TStringList.Create;
numberz := TStringList.Create;
numberz2 := TStringList.Create;
numberz3 := TStringList.Create;
start := 0;
if Edit1.Text <> '' then XXXX := strtoint(Edit1.Text);


for X := 1 to XXXX do begin // XXXX = Number of presets to create

    today := Now;
    ListMilk3.Add('################################################################################');
    ListMilk3.Add('Created with MilkDrop2077 on : '+DateToStr(today)+' at '+TimeToStr(today));

    //NO MASHUP
    if CheckBox2.Checked then begin
    R := Random(L);
    ListMilk3.Add('Original Preset : '+extractfilename(ListFiles.Strings[R]));
    ListMilk.LoadFromFile(ListFiles.Strings[R]);end;

    //Warp+Composite
    if CheckBox3.Checked then begin MILKRANDOM; end;

    //Frame+Pixel+Warp+Composite
    if CheckBox4.Checked then begin MILKRANDOMALL; end; //ListMilk = MASHED CODE



    //CODE CHANGE----------------------------------------------------------------------------------------------------------------------------------
    if LabelChance.Caption <> '0' then begin
    ListMilk3.Add('Level of RANDOMIZATION >> Around '+LabelChance.Caption+'% of editable values were changed up to - or + '+LabelValue.Caption+'%');

    if CheckBox2.Checked then begin //ALONE
    R := Random(L);
    numberz.LoadFromFile(ListFiles.Strings[R]);
    numberz3 := numberz; end else begin  //ON MASHUP, ListMilk = mashedup list
    numberz := ListMilk;
    numberz3 := numberz;
    end;

    for i := 0 to numberz.Count-1 do begin
    if Pos('fWaveAlpha=', numberz[i])<>0 then start := i; end;
    if start = 0 then start := 35;
    MILKDROP(numberz, strtoint(LabelChance.Caption), strtoint(LabelValue.Caption), start);
    ListMilk2.AddStrings(numberz3);                                                                                      //ListMilk2 = changed code
    ListMilk3.Add('Result : A total of '+inttostr(lastt)+' out of '+inttostr(lasttt)+' values have been changed :)');
    end;
    //CODE CHANGE----------------------------------------------------------------------------------------------------------------------------------

    //NO CHANGE
    if LabelChance.Caption = '0' then ListMilk2 := ListMilk; //ListMilk2 = FINAL MASH+CHANGE

    //COLOR CHANGE
    if CheckBox1.Checked then begin MILKFLOAT3(ListMilk2); ListMilk3.Add('Randomize colors : ON'); end;

    //FORCE COLOR CHANGE
    if CheckBox7.Checked then begin FORCEMILKFLOAT3(ListMilk2); ListMilk3.Add('Force randomize colors : ON'); end;

    //Randomly change bits of code
    //if CheckBox5.Checked then begin end;

    //Add an extra effect to the composite shader
    if CheckBox6.Checked then begin
    numberz.Clear;
    addmilk := TStringList.Create;
    for i := 0 to CheckListBox1.Count-1 do begin // add CheckListBox1.Checked to addmilk StringList
    if CheckListBox1.Checked[i] then addmilk.Add(CheckListBox1.Items.Strings[i]); end;
    randomize;
    z := random(addmilk.Count);
    ADDMILKEFFECT(ListMilk2,addmilk.Strings[z]);
    ListMilk3.Add('Extra effect added : '+addmilk.Strings[z]);
    end;


    ListMilk3.Add('################################################################################');
    // BUG FIX 1.0.2
    if not CheckBox2.Checked then begin
    ListMilk3.Add('MILKDROP_PRESET_VERSION=201');
    PS := Max(PSW, PSC);
    ListMilk3.Add('PSVERSION='+inttostr(PS));
    ListMilk3.Add('PSVERSION_WARP='+inttostr(PSW));
    ListMilk3.Add('PSVERSION_COMP='+inttostr(PSC)); end;

    ListMilk3.Add(ListMilk2.Text);//add mashup

    if not replace then begin // check if file already exist : overwrite
    if FileExists(ChoixRepertoire2+'MilkDrop2077.'+FormatFloat('0000', x)+'.milk') then begin
    choix:=MessageBox(Handle, pchar('Presets already exist in output folder, overwrite ALL ?') , pchar('MilkDrop2077'), 49);
    If choix=1 then begin replace := true; end;
    If choix=2 then begin exit; end; // if no then cancel
    end;
    end;

    ListMilk3.SaveToFile(ChoixRepertoire2+'MilkDrop2077.'+FormatFloat('0000', x)+'.milk'); // write the preset
    ListMilk.Clear;
    ListMilk2.Clear;
    ListMilk3.Clear;
    numberz.Clear;
    numberz2.Clear;
    numberz3.Clear;

    if (X/XXXX)*100 >  7 then ImageP01.Visible := true;
    if (X/XXXX)*100 > 14 then ImageP02.Visible := true;
    if (X/XXXX)*100 > 21 then ImageP03.Visible := true;
    if (X/XXXX)*100 > 28 then ImageP04.Visible := true;
    if (X/XXXX)*100 > 35 then ImageP05.Visible := true;
    if (X/XXXX)*100 > 42 then ImageP06.Visible := true;
    if (X/XXXX)*100 > 49 then ImageP07.Visible := true;
    if (X/XXXX)*100 > 56 then ImageP08.Visible := true;
    if (X/XXXX)*100 > 63 then ImageP09.Visible := true;
    if (X/XXXX)*100 > 70 then ImageP10.Visible := true;
    if (X/XXXX)*100 > 77 then ImageP11.Visible := true;
    if (X/XXXX)*100 > 84 then ImageP12.Visible := true;
    if (X/XXXX)*100 > 92 then ImageP13.Visible := true;
    if XXXX > 1 then LabelCreated.Caption := '>>> '+inttostr(X)+' Presets created' else   LabelCreated.Caption := '>>> '+inttostr(X)+' Preset created';
    Application.ProcessMessages;
end;
end;


procedure TForm1.ImgOPTIONSMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if Panel1.Visible = true then begin
Panel1.Visible := false;
ImgOPTIONS.Visible := false;
end else begin
Panel1.Visible := true;
end;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked then begin CheckBox3.Checked := false; CheckBox4.Checked := false; end;
Label4.Visible := false;
edit2.Visible := false;
Panel6.Visible := false;
LabelWC.Font.Color := clRed;
LabelWC.Caption := '';
Edit2.Text := '';
Panel1.Repaint;
end;
procedure TForm1.CheckBox3Click(Sender: TObject);
begin
if CheckBox3.Checked then begin CheckBox2.Checked := false; CheckBox4.Checked := false; end;
Label4.Visible := true;
edit2.Visible := true;
Panel6.Visible := true;
end;
procedure TForm1.CheckBox4Click(Sender: TObject);
begin
if CheckBox4.Checked then begin CheckBox2.Checked := false; CheckBox3.Checked := false; end;
Label4.Visible := false;
edit2.Visible := false;
Panel6.Visible := false;
LabelWC.Font.Color := clRed;
LabelWC.Caption := '';
Edit2.Text := '';
Panel1.Repaint;
end;
procedure TForm1.Panel2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if LabelChance.Caption = '0' then exit;
LabelChance.Caption := inttostr(strtoint(LabelChance.Caption)-5);
if LabelChance.Caption = '0' then begin
Label6.Visible := false;
Panel4.Visible := false;
Panel5.Visible := false;
Label7.Visible := false;
Label9.Visible := false;
LabelValue.Visible := false;
LabelChance.Visible := false;
Label5.Font.Color := clRed;
Label5.Caption := 'no values will be changed';
Panel1.Repaint;
end;
end;
procedure TForm1.Panel3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if LabelChance.Caption = '100' then exit;
LabelChance.Caption := inttostr(strtoint(LabelChance.Caption)+5);
if LabelChance.Caption = '5' then begin
Label6.Visible := true;
Panel4.Visible := true;
Panel5.Visible := true;
Label7.Visible := true;
Label9.Visible := true;
LabelValue.Visible := true;
LabelChance.Visible := true;
Label5.Font.Color := $00EBC1FF;
Label5.Caption := '% chances that values will be changed';
end;
end;
procedure TForm1.Panel4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if LabelValue.Caption = '5' then exit;
LabelValue.Caption := inttostr(strtoint(LabelValue.Caption)-5);
end;
procedure TForm1.Panel5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if LabelValue.Caption = '50' then exit;
LabelValue.Caption := inttostr(strtoint(LabelValue.Caption)+5);
end;

procedure TForm1.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LabelT.Caption := ''
end;

procedure TForm1.CheckBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LabelT.Caption := 'Change all float3() values, random number from 0 to 3'+#13#10+'ex : float3(1,2,3) to float3(0.7,2.5,1.9)';
end;
procedure TForm1.CheckBox7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LabelT.Caption := 'Add on the last line of composite shader'+#13#10+'an extra float3 value, to force an RGB change (random R or G or B)'+#13#10+'ex for R: ret -= float3(1,0,0);';
end;
procedure TForm1.Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LabelT.Caption := 'Select the type of Mash-up...';
end;
procedure TForm1.CheckBox2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LabelT.Caption := 'OFF: No Mash-up.'
end;
procedure TForm1.CheckBox3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LabelT.Caption := 'Warp+Composite: Like pressing the ''a'' button in MilkDrop:'+#13#10+'steals the warp shader from a different random preset,'+#13#10+'and steals the composite shader from a third random preset.';
end;
procedure TForm1.CheckBox4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LabelT.Caption := 'Steals the Frame + Pixel + Warp + Composite code,'+#13#10+'from others differents random presets.';
end;
procedure TForm1.Label4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LabelT.Caption := 'Select a different folder than the input one.'+#13#10+'Mash-up code will come from this folder.';
end;
procedure TForm1.Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LabelT.Caption := 'Number of chances of a value to be changed.'+#13#10+'ex : 20% = a value will have 1 chance out of 5 to be changed.';
end;
procedure TForm1.Label6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LabelT.Caption := 'Maximum percentage of change (random + or -).'+#13#10+'ex : 20% for a value of 100 :'+#13#10+'100 (random + or -) (0 to 20) / 100 = 80~120 result.';
end;
procedure TForm1.CheckBox5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LabelT.Caption := 'Coming soon...';
end;
procedure TForm1.CheckBox6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LabelT.Caption := 'Add a random effect to the preset in the composite code.'+#13#10+'Predetermined : brighten, gamma, invert, kaleidoscope ect...'+#13#10+'ex for a monochrome effect : ret = lum(ret);';
end;

procedure TForm1.Edit2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ChoixRepertoire3 := ExtractFilePath(Application.ExeName);
If SelectDirectory('Select another folder to grab Warp + Composite Shaders...','',ChoixRepertoire3)
Then begin
if ChoixRepertoire3 = '' then exit;  // in case empty, then stop
Edit2.Text := ChoixRepertoire3;
end;
if Edit2.Text = '' then exit;
ListFilesWC := TStringList.Create;
RCGen2(ChoixRepertoire3, '*.milk', ListFilesWC, true);
x:= ListFilesWC.Count;
if x < 1 then LabelWC.Font.Color := clRed else LabelWC.Font.Color := clLime;
if x > 1 then LabelWC.Caption := inttostr(x) + ' Presets found.' else LabelWC.Caption := inttostr(x) + ' Preset found.';
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
var i : integer;
begin
if CheckListBox1.Visible = false then begin
for i := 0 to CheckListBox1.Items.Count - 1 do CheckListBox1.Checked[i] := true;
CheckListBox1.Visible := true;
end else begin CheckListBox1.Visible := false; end;
end;


procedure TForm1.CheckBox5Click(Sender: TObject);
begin
 if CheckBox5.Checked then CheckBox5.Checked := false;
end;


procedure TForm1.CheckListBox1ClickCheck(Sender: TObject);
var i : integer;
Checktrue : boolean;
begin
Checktrue := false;
for i := 0 to CheckListBox1.Items.Count - 1 do begin
if CheckListBox1.Checked[i] = true then Checktrue := true;
end;
if not Checktrue then begin CheckBox6.Checked := false; end;
end;



end.
