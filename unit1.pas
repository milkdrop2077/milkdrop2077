{
MilkDrop2077 source code. Coded with Lazarus 2.0.10. Probably works on newer and older versions too.
No specials components or packages needed to compile, everything is standard.
https://github.com/milkdrop2077
https://twitter.com/milkdrop2077
milkdrop2077@gmail.com
Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0) © 2021

Support development by donating :)
BTC: 1MWVYMacKaezMCyC5azUXueCJi46PYxNye
ETH: 0xE52Eb8A2d8c7DC5Be207A393e29C8f350bBeCA3e
LTC: LdawAcH5CkUr1wdM57vRsny4R7kvuZdZvR
DOGE: D74BdUpJwaP3A9QWeUuoGCk1ZSdVgZspNZ
paypal.me/milkdrop2077

update v2.0.3 2021/02/18 :
-I should use CTRL+D to format the code sorry Nitorami :P
-code has been split with STRING.INC and INTERFACE.INC, Unit1 now is only about main procedure
-bug fix : replaced for j := 0 to length(s) to for j := 1 in MILKFLOAT3
-removed a try except end; to the GO! click
-added a check if length(s) > 0 on procedure MILKDROP

update v2.0.2 2021/02/17 :
-bug fix check if output folder is valid
-removed s : string from public variables
-added a try except end; to the GO! click

update v2.0 2021/02/10 :
-project ported from Delphi 7 to Lazarus
-added autogenerate
-added drag & drop
-added randomize everything
-few fixes from Nitorami

update v1.0.3 2021/02/01 :
-bug fix in MILKRANDOMALL, more break added if no per_frame_ lines found.
-bug fix in MILKFLOAT3, check if there is any letters then break.

update v1.0.2 2021/01/28 :
-bug fix when writing PSVERSION=, PSVERSION_WARP=, PSVERSION_COMP=.
}

unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Windows, Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  StdCtrls, Variants, CheckLst, StrUtils, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    CheckBox1RandColor: TCheckBox;
    CheckBox3MashOFF: TCheckBox;
    CheckBox4MashWC: TCheckBox;
    CheckBox4MashALL: TCheckBox;
    CheckBox6ChangeBits: TCheckBox;
    CheckBox5AddEffect: TCheckBox;
    CheckBox2ForceRandColor: TCheckBox;
    CheckBox7RandALL: TCheckBox;
    CheckListBox1: TCheckListBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Image2: TImage;
    ImageP01: TImage;
    ImageNoChances: TImage;
    ImageOptionsBack: TImage;
    ImageP10: TImage;
    ImageP11: TImage;
    ImageP12: TImage;
    ImageP13: TImage;
    ImageP02: TImage;
    ImageP03: TImage;
    ImageP04: TImage;
    ImageP05: TImage;
    ImageP06: TImage;
    ImageP07: TImage;
    ImageP08: TImage;
    ImageP09: TImage;
    ImgExit: TImage;
    ImgOptions: TImage;
    ImgAbout: TImage;
    ImgRRR2B: TImage;
    ImgRRR3B: TImage;
    ImgRRR4B: TImage;
    ImgRRR5B: TImage;
    ImgRRR2: TImage;
    ImgRRR3: TImage;
    ImgRRR4: TImage;
    ImgRRR5: TImage;
    ImgOn1: TImage;
    ImgAuto: TImage;
    ImgMashup: TImage;
    ImgOn2: TImage;
    ImgInput: TImage;
    ImgOutput: TImage;
    ImgNumber: TImage;
    ImgRRR1: TImage;
    ImgRRR1B: TImage;
    ImgGo: TImage;
    LabelMaskChances: TLabel;
    Label10: TLabel;
    LabelChance: TLabel;
    LabelMaskValues: TLabel;
    LabelOptions: TLabel;
    LabelGO: TLabel;
    LabelFound: TLabel;
    LabelLVL1: TLabel;
    LabelLVL2: TLabel;
    LabelAbout: TLabel;
    LabelOutput: TLabel;
    LabelMashup: TLabel;
    LabelExit: TLabel;
    LabelAuto: TLabel;
    LabelInputFolder: TLabel;
    LabelInput: TLabel;
    LabelRRR1: TLabel;
    LabelOutputFolder: TLabel;
    LabelNumber: TLabel;
    LabelRRR2: TLabel;
    LabelRRR3: TLabel;
    LabelRRR4: TLabel;
    LabelRRR5: TLabel;
    LabelScrolling: TLabel;
    LabelT: TLabel;
    LabelValue: TLabel;
    LabelWC: TLabel;
    LabelCreated: TLabel;
    ChancesM: TPanel;
    ChancesP: TPanel;
    ValuesM: TPanel;
    ValuesP: TPanel;
    Edit2Plus: TPanel;
    PanelNoChange: TPanel;
    PanelNoChange2: TPanel;
    PanelNoMash: TPanel;
    PanelScrolling: TPanel;
    PanelMashup: TPanel;
    Panel1: TPanel;
    Timer1: TTimer;
    procedure CheckBox1RandColorMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox3MashOFFClick(Sender: TObject);
    procedure CheckBox3MashOFFMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox4MashWCClick(Sender: TObject);
    procedure CheckBox4MashWCMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox4MashALLClick(Sender: TObject);
    procedure CheckBox4MashALLMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox6ChangeBitsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox5AddEffectClick(Sender: TObject);
    procedure CheckBox5AddEffectMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox2ForceRandColorMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox7RandALLMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckListBox1ClickCheck(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit2MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure FormCreate(Sender: TObject);
    procedure FormDropFiles(Sender: TObject; const FileNames: array of String);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageOptionsBackMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LabelAboutClick(Sender: TObject);
    procedure LabelAboutMouseEnter(Sender: TObject);
    procedure LabelAboutMouseLeave(Sender: TObject);
    procedure LabelAutoClick(Sender: TObject);
    procedure LabelAutoMouseEnter(Sender: TObject);
    procedure LabelAutoMouseLeave(Sender: TObject);
    procedure LabelMaskChancesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LabelMaskValuesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LabelOptionsClick(Sender: TObject);
    procedure LabelOptionsMouseEnter(Sender: TObject);
    procedure LabelOptionsMouseLeave(Sender: TObject);
    procedure LabelExitClick(Sender: TObject);
    procedure LabelExitMouseEnter(Sender: TObject);
    procedure LabelExitMouseLeave(Sender: TObject);
    procedure LabelGOClick(Sender: TObject);
    procedure LabelGOMouseEnter(Sender: TObject);
    procedure LabelGOMouseLeave(Sender: TObject);
    procedure LabelInputFolderClick(Sender: TObject);
    procedure LabelInputFolderMouseEnter(Sender: TObject);
    procedure LabelInputFolderMouseLeave(Sender: TObject);
    procedure LabelMashupClick(Sender: TObject);
    procedure LabelMashupMouseEnter(Sender: TObject);
    procedure LabelMashupMouseLeave(Sender: TObject);
    procedure LabelNumberClick(Sender: TObject);
    procedure LabelNumberMouseEnter(Sender: TObject);
    procedure LabelNumberMouseLeave(Sender: TObject);
    procedure LabelOutputFolderClick(Sender: TObject);
    procedure LabelOutputFolderMouseEnter(Sender: TObject);
    procedure LabelOutputFolderMouseLeave(Sender: TObject);
    procedure LabelRRR1Click(Sender: TObject);
    procedure LabelRRR1MouseEnter(Sender: TObject);
    procedure LabelRRR1MouseLeave(Sender: TObject);
    procedure LabelRRR2Click(Sender: TObject);
    procedure LabelRRR2MouseEnter(Sender: TObject);
    procedure LabelRRR2MouseLeave(Sender: TObject);
    procedure LabelRRR3Click(Sender: TObject);
    procedure LabelRRR3MouseEnter(Sender: TObject);
    procedure LabelRRR3MouseLeave(Sender: TObject);
    procedure LabelRRR4Click(Sender: TObject);
    procedure LabelRRR4MouseEnter(Sender: TObject);
    procedure LabelRRR4MouseLeave(Sender: TObject);
    procedure LabelRRR5Click(Sender: TObject);
    procedure LabelRRR5MouseEnter(Sender: TObject);
    procedure LabelRRR5MouseLeave(Sender: TObject);
    procedure ChancesMMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ChancesMMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure ChancesPMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ValuesMMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ValuesMMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure ValuesPMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

hwndRessource:HRSRC;
tailleRes:integer;
ptrRessource:PRGNDATA;
hwndregion:hrgn;
sel:TRect;

ChoixRepertoire : string;
ChoixRepertoire2 : string;
ChoixRepertoire3 : string;
x, XXXX, RANDOMZ, L, LWC, total, total2, lastt, lasttt : integer;


ListFiles: TStringList;
ListFilesWC: TStringList;
ListTEMP: TStringList;
ListMilk: TStringList;
ListMilk2: TStringList;
ListMilk3: TStringList;
numberz,numberz2,numberz3 : tstringlist;

md :boolean;
x0, y0 :integer;

const
ForceFLOT3 : array[1..3] of string = ('ret -= float3(1,0,0); // MilkDrop 2077','ret -= float3(0,1,0); // MilkDrop 2077','ret -= float3(0,0,1); // MilkDrop 2077');


implementation
uses Unit2;

{$R *.lfm}
{$R regions.RES}  //to cut the background picture
{$R milk.RES}     //kaleidoscope effect
{$R PRESETS.RES}  //200 presets


{ TForm1 }

// String functions
{$INCLUDE STRING.INC}

// Interface
{$INCLUDE INTERFACE.INC}

{
procedure      MILKRANDOM : Mashup Warp code + Comp code ONLY
procedure   MILKRANDOMALL : Mashup Wave & Shape + Per Frame + Per Pixel + Warp code + Comp code
procedure        MILKDROP : Random values, main function
procedure      MILKFLOAT3 : Randomize colors, find and change all float3 values
procedure FORCEMILKFLOAT3 : Force randomize colors : add float3 value at the end of comp.
procedure   ADDMILKEFFECT : Add one effect on comp shader_body

procedure AUTOGEN_MILKRANDOM + procedure AUTOGEN_MILKRANDOMALL used for AUTOGENERATE
TForm1.LabelGOClick : Main action, split in 2 : AUTOGENERATE and MASHUP
}


//////////////////////begin of MilkDrop2077 functions//////////////////////


//Mashup Warp code + Comp code ONLY
procedure MILKRANDOM;
var
i,j,R,RWC : integer;
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
begin

    R := Random(L);
    ListTEMP.LoadFromFile(ListFiles.Strings[R]);
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('per_frame_', ListTEMP[i])<>0 then break;
    if Pos('per_pixel_', ListTEMP[i])<>0 then break; // bug if no per_frame_ code in preset
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
    ListTEMP.Clear;
    ListMilk3.Add('Warp code from : '+extractfilename(ListFiles.Strings[R]));


    R := Random(L);
    ListTEMP.LoadFromFile(ListFiles.Strings[R]);
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('comp_', ListTEMP[i])<>0 then ListMilk.Add(ListTEMP[i]);
    end;
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
ss := '';
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
if length(s) > 0 then begin if s[1] = '.' then s := '0'+s; end;// if .123 then = 0.123
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
a,b,c,j,FoundLetters : integer;
s,ss,sss,t,finale: string;
begin

 for a := 1 to numberz.Count-1 do begin //loop
 FoundLetters := 0;
     if Pos('float3(', numberz[a]) or Pos('float3 (', numberz[a]) <>0 then begin  //find 'float3'
       sss := numberz[a];
          for b := 1 to 5 do begin     //try to find up to 5 'float3' strings in 1 string (s)
             c := NthPos('float3(',sss,b);  //function NthPos(TheSubString: String; TheString: String; N: integer): integer;
             if c <>0 then begin      //if found 'float3' then begin
             t := Copy(sss, c, length(sss)); //+6 start after 'float3'[6]
             s := ExtractTextBetween(t,'float3(',')');
             for j := 1 to length(s) do begin if s[ j ] in ['a' .. 'z' , 'A' .. 'Z'] then FoundLetters := 1 else end ; //check if editable not like ex : float3(texsize.zw * 4, 0) or float3(q4,q5,q6);
             if FoundLetters = 0 then begin
             ss := floattostr(random(30)/10)+','+floattostr(random(30)/10)+','+floattostr(random(30)/10);
             finale := NewStringReplace(sss, s, ss,[rfReplaceAll, rfIgnoreCase]);
             sss := finale;
             ListMilk2[a] := sss;
             end; end;
             c := NthPos('float3 (',sss,b);
             if c <>0 then begin
             t := Copy(sss, c, length(sss)); //+6 start after 'float3'[6]
             s := ExtractTextBetween(t,'float3 (',')');
             for j := 1 to length(s) do begin if s[ j ] in ['a' .. 'z' , 'A' .. 'Z'] then FoundLetters := 1 else end ; //check if editable not like ex : float3(texsize.zw * 4, 0) or float3(q4,q5,q6);
             if FoundLetters = 0 then begin
             ss := floattostr(random(30)/10)+','+floattostr(random(30)/10)+','+floattostr(random(30)/10);
             finale := NewStringReplace(sss, s, ss,[rfReplaceAll, rfIgnoreCase]);
             sss := finale;
             ListMilk2[a] := sss;
             end; end;
end;
end;
end;
end;



//Force randomize colors : add float3 value at the end of comp.
//RandomRange : uses Math.
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
ListMilk2.Add('comp_'+s+'=`'+ForceFLOT3[RandomRange(1,4)]);       // 1 to 3 (4 not included), see const. on top
ListMilk2.Add('comp_'+inttostr(strtoint(s)+1)+'=`}');          // add new line } with comp #+1
found := true;
end;
end;
if found then break; // if found and edited then exit
end;
end;



// Load Shader from Resource (kaleidoscope)
// Also load the 200 presets for autogeneration
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


//////////////////////End of MilkDrop2077 functions//////////////////////




//////////////////////begin of AUTOGENERATE functions//////////////////////

{
PRESETS.rc looks like that :
MILK0 TEXT "MilkDrop2077.R000.milk"
MILK1 TEXT "MilkDrop2077.R001.milk"
MILK2 TEXT "MilkDrop2077.R002.milk"
to 199.
}

//Mashup Warp code + Comp code ONLY
//R = 0 to 199, perfect for PRESETS.RES, MILKD0 to MILKD199
procedure AUTOGEN_MILKRANDOM;
var
i,j,R : integer;
begin

    R := Random(200);
    LoadStringListFromResource('MILK'+inttostr(R),ListTEMP);
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('warp_', ListTEMP[i])<>0 then break; // go until warp_ found
    if Pos('comp_', ListTEMP[i])<>0 then break; // bug if no warp code in preset
    ListMilk.Add(ListTEMP[i]);
    end;
    ListTEMP.Clear;
    ListMilk3.Add('Code from : MilkDrop2077.R'+FormatFloat('000', R));

    R := Random(200);
    LoadStringListFromResource('MILK'+inttostr(R),ListTEMP);
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('warp_', ListTEMP[i])<>0 then ListMilk.Add(ListTEMP[i]);
    end;
    ListTEMP.Clear;
    ListMilk3.Add('Warp code from : MilkDrop2077.R'+FormatFloat('000', R));

    R := Random(200);
    LoadStringListFromResource('MILK'+inttostr(R),ListTEMP);
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('comp_', ListTEMP[i])<>0 then ListMilk.Add(ListTEMP[i]);
    end;
    ListTEMP.Clear;
    ListMilk3.Add('Comp code from : MilkDrop2077.R'+FormatFloat('000', R));

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
//R = 0 to 199, perfect for PRESETS.RES, MILKD0 to MILKD199
procedure AUTOGEN_MILKRANDOMALL;
var
i,j,R : integer;
begin

    R := Random(200);
    LoadStringListFromResource('MILK'+inttostr(R),ListTEMP);
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('per_frame_', ListTEMP[i])<>0 then break;
    if Pos('per_pixel_', ListTEMP[i])<>0 then break; // bug if no per_frame_ code in preset
    if Pos('warp_', ListTEMP[i])<>0 then break; // bug if no per_pixel_ code in preset
    if Pos('comp_', ListTEMP[i])<>0 then break; // bug if no warp_ code in preset
    ListMilk.Add(ListTEMP[i]);
    end;
    ListTEMP.Clear;
    ListMilk3.Add('Wave & Shape code from : MilkDrop2077.R'+FormatFloat('000', R));

    R := Random(200);
    LoadStringListFromResource('MILK'+inttostr(R),ListTEMP);
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('per_frame_', ListTEMP[i])<>0 then ListMilk.Add(ListTEMP[i]);
    end;
    ListTEMP.Clear;
    ListMilk3.Add('Per Frame code from : MilkDrop2077.R'+FormatFloat('000', R));

    R := Random(200);
    LoadStringListFromResource('MILK'+inttostr(R),ListTEMP);
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('per_pixel_', ListTEMP[i])<>0 then ListMilk.Add(ListTEMP[i]);
    end;
    ListTEMP.Clear;
    ListMilk3.Add('Per Pixel code from : MilkDrop2077.R'+FormatFloat('000', R));

    R := Random(200);
    LoadStringListFromResource('MILK'+inttostr(R),ListTEMP);
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('warp_', ListTEMP[i])<>0 then ListMilk.Add(ListTEMP[i]);
    end;
    ListTEMP.Clear;
    ListMilk3.Add('Warp code from : MilkDrop2077.R'+FormatFloat('000', R));

    R := Random(200);
    LoadStringListFromResource('MILK'+inttostr(R),ListTEMP);
    for i := 0 to ListTEMP.Count-1 do begin
    if Pos('comp_', ListTEMP[i])<>0 then ListMilk.Add(ListTEMP[i]);
    end;
    ListTEMP.Clear;
    ListMilk3.Add('Comp code from : MilkDrop2077.R'+FormatFloat('000', R));

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

//////////////////////End of AUTOGENERATE functions////////////////////////



//// GO! ////
procedure TForm1.LabelGOClick(Sender: TObject);
var
i, z, X, R, start : integer;
today : TDateTime;
addmilk : tstringlist;
choix: integer;
replace : boolean;
begin

if not directoryexists(ChoixRepertoire2) then CreateDir(ChoixRepertoire2);
if not directoryexists(ChoixRepertoire2) then begin showmessage('Please select a valid OUTPUT folder first'); exit; end;
if ImgOn2.Visible = true then begin if LabelFound.Font.Color = clRed then begin showmessage('Please select a valid INPUT presets folder first'); exit; end; end;
if Edit1.Visible then begin
if Edit1.Text = '' then begin showmessage('Please choose the number of presets to create'); exit; end;
if strtoint(Edit1.Text) < 1 then begin showmessage('Please choose a valid number of presets to create'); exit; end;
end;
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

if ChoixRepertoire2[Length(ChoixRepertoire2)] <> '\' then ChoixRepertoire2 := ChoixRepertoire2 + '\';
replace := false;

Randomize;
if ImgOn2.Visible = true then begin L := ListFiles.Count; end; // if mashup then L = total number .milk found
if LabelWC.Font.Color = cllime then LWC := ListFilesWC.Count;  // for mashup warp+comp with different folder than the input one
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


// AUTOGENERATE //
if ImgOn1.Visible = true then begin

    today := Now;
    ListMilk3.Add('################################################################################');
    ListMilk3.Add('AUTO-GENERATED with MilkDrop2077 on : '+DateToStr(today)+' at '+TimeToStr(today));

    //Random ALL
    //not working well for AUTOGENERATE, for some reasons presets are empty after generating ~30+ presets
    //if CheckBox7RandALL.Checked then begin LVLRandomALL; Application.ProcessMessages; sleep(1); end;

    //NO MASHUP
    if CheckBox3MashOFF.Checked then begin
    R := Random(200); // = Random 0 to 199 to randomly load one of the 200 presets
    LoadStringListFromResource('MILK'+inttostr(R),ListMilk); end;

    //Warp+Composite
    if CheckBox4MashWC.Checked then begin AUTOGEN_MILKRANDOM; end;

    //Frame+Pixel+Warp+Composite
    if CheckBox4MashALL.Checked then begin AUTOGEN_MILKRANDOMALL; end; //ListMilk = FINAL CODE


     //CODE CHANGE----------------------------------------------------------------------------------------------------------------------------------
    if LabelChance.Caption <> '0' then begin
    ListMilk3.Add('Level of RANDOMIZATION >> Around '+LabelChance.Caption+'% of editable values were changed up to - or + '+LabelValue.Caption+'%');
    numberz := ListMilk;
    numberz3 := numberz;
    for i := 0 to numberz.Count-1 do begin
    if Pos('fWaveAlpha=', numberz[i])<>0 then start := i; end;
    if start = 0 then start := 35;
    MILKDROP(numberz, strtoint(LabelChance.Caption), strtoint(LabelValue.Caption), start);
    ListMilk2.AddStrings(numberz3);                                                                                      //ListMilk2 = changed code
    ListMilk3.Add('Result : A total of '+inttostr(lastt)+' out of '+inttostr(lasttt)+' values have been changed :)');
    end;
    //CODE CHANGE----------------------------------------------------------------------------------------------------------------------------------

    //NO CHANGE
    if LabelChance.Caption = '0' then ListMilk2 := ListMilk; //ListMilk2 = FINAL CODE WITH MASH+CHANGE (if selected) APPLIED

    //COLOR CHANGE
    if CheckBox1RandColor.Checked then begin MILKFLOAT3(ListMilk2); ListMilk3.Add('Randomize colors : ON'); end;

    //FORCE COLOR CHANGE
    if CheckBox2ForceRandColor.Checked then begin FORCEMILKFLOAT3(ListMilk2); ListMilk3.Add('Force randomize colors : ON'); end;

    //Randomly change bits of code
    //if CheckBox6ChangeBits.Checked then begin end;

    //Add an extra effect to the composite shader
    if CheckBox5AddEffect.Checked then begin
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
    if not CheckBox3MashOFF.Checked then begin
    ListMilk3.Add('MILKDROP_PRESET_VERSION=201');
    ListMilk3.Add('PSVERSION=3');
    ListMilk3.Add('PSVERSION_WARP=3');
    ListMilk3.Add('PSVERSION_COMP=3'); end;

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
    sleep(1); // to avoid bug creating identical presets with LAZARUS, sleep act kind of like Application.ProcessMessages I think .
end;




// MASHUP //
if ImgOn2.Visible = true then begin

    today := Now;
    ListMilk3.Add('################################################################################');
    ListMilk3.Add('Created with MilkDrop2077 on : '+DateToStr(today)+' at '+TimeToStr(today));

    //Random ALL
    if CheckBox7RandALL.Checked then begin LVLRandomALL; Application.ProcessMessages; sleep(1); end;
    ListMilk3.Add('RANDOMIZE EVERYTHING : ON');

    //NO MASHUP
    if CheckBox3MashOFF.Checked then begin
    R := Random(L);
    ListMilk3.Add('Original Preset : '+extractfilename(ListFiles.Strings[R]));
    ListMilk.LoadFromFile(ListFiles.Strings[R]);end;

    //Warp+Composite
    if CheckBox4MashWC.Checked then begin MILKRANDOM; end;

    //Frame+Pixel+Warp+Composite
    if CheckBox4MashALL.Checked then begin MILKRANDOMALL; end; //ListMilk = MASHED CODE



    //CODE CHANGE----------------------------------------------------------------------------------------------------------------------------------
    if LabelChance.Caption <> '0' then begin
    ListMilk3.Add('Level of RANDOMIZATION >> Around '+LabelChance.Caption+'% of editable values were changed up to - or + '+LabelValue.Caption+'%');

    if CheckBox3MashOFF.Checked then begin //ALONE
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
    if CheckBox1RandColor.Checked then begin MILKFLOAT3(ListMilk2); ListMilk3.Add('Randomize colors : ON'); end;

    //FORCE COLOR CHANGE
    if CheckBox2ForceRandColor.Checked then begin FORCEMILKFLOAT3(ListMilk2); ListMilk3.Add('Force randomize colors : ON'); end;

    //Randomly change bits of code
    //if CheckBox6ChangeBits.Checked then begin end;

    //Add an extra effect to the composite shader
    if CheckBox5AddEffect.Checked then begin
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
    if not CheckBox3MashOFF.Checked then begin
    ListMilk3.Add('MILKDROP_PRESET_VERSION=201');
    ListMilk3.Add('PSVERSION=3');
    ListMilk3.Add('PSVERSION_WARP=3');
    ListMilk3.Add('PSVERSION_COMP=3'); end;

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
    sleep(1); // to avoid bug creating identical presets with LAZARUS, sleep act kind of like Application.ProcessMessages I think .
end;
end;
end;





end.













