unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Windows, Graphics, Dialogs, ExtCtrls,
  StdCtrls, MMSystem;


type

  { TForm2 }

  TForm2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private

  public

  end;

Const
StarCount=200;

Type
TStar=record
X,Y,Z:integer;
vx,vy,vc:integer;
end;

var
Form2: TForm2;
Star:array[0..StarCount-1] of TStar;
xcenter:integer;
ycenter:integer;
starsize:integer;



implementation
uses unit1;

{$R *.lfm}
{$R MUSIC.RES}

{ TForm2 }


//For the starfield
Procedure InitStars;
 var
  s:integer;
 begin
  starsize:= 100;

  for s:=0 to StarCount-1 do
   With Star[s] do begin
    vx:=-1;
    vy:=-1;
    vc:=0;
    x:=(Random(2*xCenter)-xCenter) shl 7;
    y:=(Random(2*yCenter)-yCenter) shl 7;

    z:=s+1;
   end;
 end;


{
Very cool code! Play a mp3 directly from a resource file without any special package or dll
and without extracting the mp3 to a folder. I've been searching for a code like that for years, here it is :

1. Download MP3 RIFF Header Generator (The little trick is to make windows beleive this is a wav file)
2. you have to encapsulate the mp3 into wav format with riffmp3.exe (cmd: riffmp3 about.mp3)
3. new file will be about.mpr, rename to about.wav
4. make the RES file with MUSIC.RC : about WAVE "about.wav"
5. use MMSystem, and of course implementation : MUSIC.RES
6. call mp3 direclty from RES PlaySound(PChar('about'),0,SND_ASYNC or SND_RESOURCE);
}

procedure TForm2.FormShow(Sender: TObject);
begin

 //Play the mp3 directly from the resource file {$R MUSIC.RES}
 PlaySound(PChar('about'),0,SND_ASYNC or SND_RESOURCE);

 Label1.Caption:= 'MilkDrop 2077'+#10#13+'v3.0'+#10#13#10#13#10#13+'Code : Serge Blanc'+#10#13#10#13+'thanks to :'+#10#13#10#13+'HolyView'+#10#13+'(for the area tool)'+#10#13#10#13+'Music :'+#10#13+
  'Infected Mushroom'+#10#13+'The Shen'+#10#13#10#13+'Garrick Campsey'+#10#13+'(for the design)'+#10#13#10#13+'Ryan Geiss'+#10#13+'and'+#10#13+'Maxim Volskiy'+#10#13#10#13+
  'AdamFX'+#10#13+'amandio c'+#10#13+'Cope'+#10#13+'Eo.S'+#10#13+'fiShbRaiN'+#10#13+'Flexi'+#10#13+'Goody'+#10#13+'Idiot24-7'+#10#13+'Jc'+#10#13+'Krash'+#10#13+
  'LuxXx'+#10#13+'martin'+#10#13+'Nitorami'+#10#13+'Nivush'+#10#13+'ORB'+#10#13+'Rovastar'+#10#13+'shifter'+#10#13+'suksma'+#10#13#10#13+
  'and all preset''s creator!'+#10#13#10#13#10#13+'Coded with love'+#10#13+'with LAZARUS'+#10#13+'source is available on'+#10#13+'github.com/milkdrop2077'+#10#13+
  'packed with UPX'+#10#13#10#13+'Contact :'+#10#13+'milkdrop2077@gmail.com'+#10#13+'twitter @ milkdrop2077';


 InitStars;
 timer1.Enabled := true;
 timer2.Enabled := true;
 //Windows unit also has TBitmap, but it represents Windows bitmap handle instead of LCL TBitmap class.
 //Simply reorder your uses clause, ensure Windows comes before Graphics.
 //scroll : tbitmap;
 //scroll := Tbitmap.Create;
 //scroll.LoadFromResourceName(HInstance,'scroll');
 //scroll.Transparent := true;

end;


procedure TForm2.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

 //Stop the mp3
 sndPlaySound(nil, 0);

 timer1.Enabled := false;
 timer2.Enabled := false;
 Label1.Top:= 620;
 Form1.ImgAbout.Visible:= false;
end;


//Starfield Timer
procedure TForm2.Timer1Timer(Sender: TObject);
  var
   DC:hDC;
   s:integer;
  begin
   xcenter:= Form2.width div 2;
   ycenter:= Form2.height div 2;
   if (xcenter=0)or(ycenter=0) then exit;

   DC:=GetDC(Form2.Handle);
   for s:=0 to StarCount-1 do
    with Star[s] do begin

     PatBlt(DC,vx,vy,vc,vc,BlackNess);
     vc:=1;
     vx:=x div z + xcenter - vc;
     vy:=y div z + ycenter - vc;
     PatBlt(DC,vx,vy,vc,vc,WhiteNess);
     dec(z,2);
     if z<1 then begin
      z:=StarCount;
      x:=(Random(2*xCenter)-xCenter) shl 7;
      y:=(Random(2*yCenter)-yCenter) shl 7;
     end;
    end;
end;

procedure TForm2.Timer2Timer(Sender: TObject);
begin
 label1.Top:= Label1.Top -1;
 if label1.Top < -2000 then timer2.Enabled:= false;
end;


end.

