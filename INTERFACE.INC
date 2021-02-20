
// To Kill MilkDrop if crashed, uses JwaTlHelp32
function KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(
                        OpenProcess(PROCESS_TERMINATE,
                                    BOOL(0),
                                    FProcessEntry32.th32ProcessID),
                                    0));
     ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;


// HOTKEY to Kill MilkDrop if crashed
function WndCallback(Ahwnd: HWND; uMsg: UINT; wParam: WParam; lParam: LParam):LRESULT; stdcall;
begin
  if (uMsg=WM_HOTKEY) and (WParam=MY_ID) then
    begin
      //Application.Restore;
      KillTask('winamp.original'); //KILL WACUP
      KillTask('winamp.exe'); //KILL WINAMP
    end;
  result:=CallWindowProc(PrevWndProc,Ahwnd, uMsg, WParam, LParam);
end;


// To find milk files in folder + sub-folders
// Delphi code, to work on Lazarus you must put Windows before Classes in uses :
// uses Windows, Classes << Works
// uses Classes, Windows << Don't Works!
procedure RCGen2(Path, Mask: String; List: TStrings; SubFolder: Boolean);
var
  Attrib, k : Integer;
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


//Choose the different levels of randomization
procedure LVLRandom;
begin
if RANDOMZ = 0 then begin
Form1.LabelLVL1.Caption := 'Level 0 :';
Form1.LabelLVL2.Caption := 'Mashup code from  Frame / Pixel / Warp / Comp'+#13#10+'Randomize colors.';
Form1.LabelChance.Caption := '0';
Form1.CheckBox4MashALL.Checked := true;
Form1.PanelNoChange.Visible := true;
Form1.PanelNoChange2.Visible := true;
Form1.LabelMaskValues.Visible:= false;
end;

if RANDOMZ = 1 then begin
Form1.LabelLVL1.Caption := 'Level 1 :';
Form1.LabelLVL2.Caption := '20% chances of randomizing values up to + or - 10%'+#13#10+'Randomize colors.';
Form1.LabelChance.Caption := '20';
Form1.LabelValue.Caption := '10';
Form1.CheckBox3MashOFF.Checked := true;
Form1.PanelNoChange.Visible := false;
Form1.PanelNoChange2.Visible := false;
Form1.LabelMaskValues.Visible:= true;
end;

if RANDOMZ = 2 then begin
Form1.LabelLVL1.Caption := 'Level 2 :';
Form1.LabelLVL2.Caption := '30% chances of randomizing values up to + or - 20%'+#13#10+'Randomize colors.';
Form1.CheckBox3MashOFF.Checked := true;
Form1.LabelChance.Caption := '30';
Form1.LabelValue.Caption := '20';
end;

if RANDOMZ = 3 then begin
Form1.LabelLVL1.Caption := 'Level 3 :';
Form1.LabelLVL2.Caption := 'Mashup code from Warp / Comp'+#13#10+'20% chances of randomizing values up to + or - 10%'+#13#10+'Randomize colors.';
Form1.LabelChance.Caption := '20';
Form1.LabelValue.Caption := '10';
Form1.CheckBox4MashWC.Checked := true;
end;

if RANDOMZ = 4 then begin
Form1.LabelLVL1.Caption := 'Level 4 :';
Form1.LabelLVL2.Caption := 'Mashup code from  Frame / Pixel / Warp / Comp'+#13#10+'30% chances of randomizing values up to + or - 20%'+#13#10+'Randomize colors.';
Form1.LabelChance.Caption := '30';
Form1.LabelValue.Caption := '20';
Form1.CheckBox4MashALL.Checked := true;
Form1.CheckBox5AddEffect.Checked := false;
end;

if RANDOMZ = 5 then begin
Form1.LabelLVL1.Caption := 'Level 5 :';
Form1.LabelLVL2.Caption := 'Mashup code from  Frame / Pixel / Warp / Comp'+#13#10+'30% chances of randomizing values up to + or - 25%'+#13#10+'Randomize colors + add extra effect!';
Form1.LabelChance.Caption := '30';
Form1.LabelValue.Caption := '25';
Form1.CheckBox4MashALL.Checked := true;
Form1.CheckBox5AddEffect.Checked := true;
end;
end;


procedure LVLRandomALL;
var RX : integer;
begin
RX := Random(2);
if RX = 0 then Form1.CheckBox1RandColor.Checked := true else Form1.CheckBox1RandColor.Checked := false;
RX := Random(2);
if RX = 0 then Form1.CheckBox2ForceRandColor.Checked := true else Form1.CheckBox2ForceRandColor.Checked := false;
RX := Random(3);
if RX = 0 then Form1.CheckBox3MashOFF.Checked := true;
if RX = 1 then Form1.CheckBox4MashWC.Checked := true;
if RX = 2 then Form1.CheckBox4MashALL.Checked := true;
RX := Random(2);
if RX = 0 then Form1.CheckBox5AddEffect.Checked := true else Form1.CheckBox5AddEffect.Checked := false;
RX := Random(50);
Form1.LabelChance.Caption:= inttostr(RX);
RX := Random(50);
Form1.LabelValue.Caption:= inttostr(RX);
end;



// Areas were created with Generateur_regions from HolyView
// regfond is in regions.RES
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

        form1.DoubleBuffered:= true;
        PanelMashup.DoubleBuffered := true;
        Panel1.DoubleBuffered := true;

        DefaultFormatSettings.DecimalSeparator := '.'; //to prevent bug in german versions of windows (',' instead of '.')
        XXXX := 100;
        RANDOMZ := 0;
        LVLRandom;

        //Register HOTKEY F10
        PrevWndProc:=Windows.WNDPROC(SetWindowLong(Self.Handle,GWL_WNDPROC,PtrInt(@WndCallback)));
        RegisterHotKey(Self.Handle,MY_ID,0,vk_F10); // vk_F10 = F10
end;


//UnRegisterHotkey F10
procedure TForm1.FormDestroy(Sender: TObject);
begin
  UnRegisterHotkey(Self.Handle,MY_ID);
end;



// to move the main window
procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
md := True;
x0 := x;
y0 := y;
end;

// to move the main window
procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if md then
 begin
   Left := Left - x0 + x;
   Top := Top - y0 + y;
 end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   md := False;
end;



procedure TForm1.CheckBox3MashOFFClick(Sender: TObject);
begin
  if CheckBox3MashOFF.Checked then begin CheckBox4MashWC.Checked := false; CheckBox4MashALL.Checked := false; end;
  PanelNoMash.Visible:= true;
  edit2.Visible := false;
  Edit2Plus.Visible := false;
  LabelWC.Font.Color := clRed;
  LabelWC.Caption := '';
  Edit2.Text := '';
  Panel1.Repaint;
end;

procedure TForm1.CheckBox4MashWCClick(Sender: TObject);
begin
  if CheckBox4MashWC.Checked then begin CheckBox3MashOFF.Checked := false; CheckBox4MashALL.Checked := false; end;
  PanelNoMash.Visible:= false;
  edit2.Visible := true;
  Edit2Plus.Visible := true;
  Panel1.Repaint;
end;

procedure TForm1.CheckBox4MashALLClick(Sender: TObject);
begin
 if CheckBox4MashALL.Checked then begin CheckBox3MashOFF.Checked := false; CheckBox4MashWC.Checked := false; end;
 PanelNoMash.Visible:= true;
edit2.Visible := false;
Edit2Plus.Visible := false;
LabelWC.Font.Color := clRed;
LabelWC.Caption := '';
Edit2.Text := '';
Panel1.Repaint;
end;

procedure TForm1.ChancesMMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if LabelChance.Caption = '0' then exit;
LabelChance.Caption := inttostr(strtoint(LabelChance.Caption)-5);
if LabelChance.Caption = '0' then begin
PanelNoChange.Visible:= true;
PanelNoChange2.Visible:= true;
LabelMaskValues.Visible:= false;
end;
Panel1.Repaint;
end;

procedure TForm1.ChancesMMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

end;

procedure TForm1.ChancesPMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if LabelChance.Caption = '100' then exit;
LabelChance.Caption := inttostr(strtoint(LabelChance.Caption)+5);
if LabelChance.Caption = '5' then begin
PanelNoChange.Visible:= false;
PanelNoChange2.Visible:= false;
LabelMaskValues.Visible:= true;
end;
Panel1.Repaint;
end;

procedure TForm1.ValuesMMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if LabelValue.Caption = '5' then exit;
LabelValue.Caption := inttostr(strtoint(LabelValue.Caption)-5);
end;

procedure TForm1.ValuesMMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

end;

procedure TForm1.ValuesPMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if LabelValue.Caption = '50' then exit;
LabelValue.Caption := inttostr(strtoint(LabelValue.Caption)+5);
end;

procedure TForm1.ImageOptionsBackMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  LabelT.Caption := '';

// to move the main window
if md then
 begin
   Left := Left - x0 + x;
   Top := Top - y0 + y;
 end;
end;




procedure TForm1.CheckBox1RandColorMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LabelT.Caption := 'Change all float3() values, random number from 0 to 3'+#13#10+'ex : float3(1,2,3) to float3(0.7,2.5,1.9)';
end;
procedure TForm1.CheckBox2ForceRandColorMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 LabelT.Caption := 'Add on the last line of composite shader'+#13#10+'an extra float3 value, to force an RGB change (random R or G or B)'+#13#10+'ex for R: ret -= float3(1,0,0);';
end;
procedure TForm1.CheckBox3MashOFFMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LabelT.Caption := 'OFF: No Mash-up.'
end;
procedure TForm1.CheckBox4MashWCMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LabelT.Caption := 'Warp+Composite: Like pressing the ''a'' button in MilkDrop:'+#13#10+'steals the warp shader from a different random preset,'+#13#10+'and steals the composite shader from a third random preset.';
end;
procedure TForm1.CheckBox4MashALLMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LabelT.Caption := 'Steals the Frame + Pixel + Warp + Composite code,'+#13#10+'from others differents random presets.';
end;
procedure TForm1.Edit2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
LabelT.Caption := 'Select a different folder than the input one.'+#13#10+'Mash-up code will come from this folder.';
end;
procedure TForm1.LabelMaskChancesMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
LabelT.Caption := 'Number of chances of a value to be changed.'+#13#10+'ex : 20% = a value will have 1 chance out of 5 to be changed.';
end;
procedure TForm1.LabelMaskValuesMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   LabelT.Caption := 'Maximum percentage of change (random + or -).'+#13#10+'ex : 20% for a value of 100 :'+#13#10+'100 (random + or -) (0 to 20) / 100 = 80~120 result.';
end;
procedure TForm1.CheckBox5AddEffectMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LabelT.Caption := 'Add a random effect to the preset in the composite code.'+#13#10+'Predetermined : brighten, gamma, invert, kaleidoscope ect...'+#13#10+'ex for a monochrome effect : ret = lum(ret);';
end;
procedure TForm1.CheckBox6ChangeBitsMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LabelT.Caption := 'Coming soon...';
end;
procedure TForm1.CheckBox7RandALLMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LabelT.Caption := 'Randomize all the options everytime a preset is created.'+#13#10+'Experimental, does not work with Auto-generate yet.';
end;

procedure TForm1.Edit2Click(Sender: TObject);
begin
If SelectDirectory('Select another folder to grab Warp + Composite Shaders...',ExtractFilePath(Application.ExeName),ChoixRepertoire3)
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

procedure TForm1.CheckBox5AddEffectClick(Sender: TObject);
var i : integer;
begin
if CheckListBox1.Visible = false then begin
for i := 0 to CheckListBox1.Items.Count - 1 do CheckListBox1.Checked[i] := true;
CheckListBox1.Visible := true;
end else begin CheckListBox1.Visible := false; end;
end;

procedure TForm1.CheckListBox1ClickCheck(Sender: TObject);
var
i : integer;
Checktrue : boolean;
begin
Checktrue := false;
for i := 0 to CheckListBox1.Items.Count - 1 do begin
if CheckListBox1.Checked[i] = true then Checktrue := true;
end;
if not Checktrue then begin CheckBox5AddEffect.Checked := false; end;
end;


// Autogenerate
procedure TForm1.LabelAutoMouseEnter(Sender: TObject);
begin ImgAuto.Visible:= true; end;
procedure TForm1.LabelAutoMouseLeave(Sender: TObject);
begin ImgAuto.Visible:= false; end;
procedure TForm1.LabelAutoClick(Sender: TObject);
begin if ImgOn1.Visible = false then begin
ImgOn1.Visible := true ;
ImgOn2.Visible := false ;
PanelMashup.Visible := true;
LabelFound.Visible:= false;
form1.AllowDropFiles:= false;
end; end;
// Mashup
procedure TForm1.LabelMashupMouseEnter(Sender: TObject);
begin ImgMashup.Visible:= true; end;
procedure TForm1.LabelMashupMouseLeave(Sender: TObject);
begin ImgMashup.Visible:= false; end;
procedure TForm1.LabelMashupClick(Sender: TObject);
begin if ImgOn2.Visible = false then begin
ImgOn2.Visible := true ;
ImgOn1.Visible := false ;
PanelMashup.Visible := false;
LabelFound.Visible:= true;
form1.AllowDropFiles:= true;
end; end;
// Input
procedure TForm1.LabelInputFolderMouseEnter(Sender: TObject);
begin ImgInput.Visible:= true; end;
procedure TForm1.LabelInputFolderMouseLeave(Sender: TObject);
begin ImgInput.Visible:= false; end;
// Output
procedure TForm1.LabelOutputFolderMouseEnter(Sender: TObject);
begin ImgOutput.Visible:= true; end;
procedure TForm1.LabelOutputFolderMouseLeave(Sender: TObject);
begin ImgOutput.Visible:= false; end;
// Number
procedure TForm1.LabelNumberMouseEnter(Sender: TObject);
begin ImgNumber.Visible:= true; end;
procedure TForm1.LabelNumberMouseLeave(Sender: TObject);
begin if not Edit1.Visible then ImgNumber.Visible:= false; end;
procedure TForm1.LabelNumberClick(Sender: TObject);
begin Edit1.Visible := true; Edit1.SetFocus; end;
// Level 1
procedure TForm1.LabelRRR1MouseEnter(Sender: TObject);
begin ImgRRR1.Visible:= true; end;
procedure TForm1.LabelRRR1MouseLeave(Sender: TObject);
begin ImgRRR1.Visible:= false; end;
procedure TForm1.LabelRRR1Click(Sender: TObject);
begin
if ImgRRR1B.Visible = false then begin ImgRRR1B.Visible := true; RANDOMZ := 1; LVLRandom; exit; end;
if ImgRRR5B.Visible = true then begin ImgRRR5B.Visible := false; RANDOMZ := 4; LVLRandom; exit; end;
if ImgRRR4B.Visible = true then begin ImgRRR4B.Visible := false; RANDOMZ := 3; LVLRandom; exit; end;
if ImgRRR3B.Visible = true then begin ImgRRR3B.Visible := false; RANDOMZ := 2; LVLRandom; exit; end;
if ImgRRR2B.Visible = true then begin ImgRRR2B.Visible := false; RANDOMZ := 1; LVLRandom; exit; end;
if ImgRRR1B.Visible = true then begin ImgRRR1B.Visible := false; RANDOMZ := 0; LVLRandom; exit; end;
end;
// Level 2
procedure TForm1.LabelRRR2MouseEnter(Sender: TObject);
begin ImgRRR2.Visible:= true; end;
procedure TForm1.LabelRRR2MouseLeave(Sender: TObject);
begin ImgRRR2.Visible:= false; end;
procedure TForm1.LabelRRR2Click(Sender: TObject);
begin
if ImgRRR1B.Visible = false then begin ImgRRR1B.Visible := true; RANDOMZ := 1; LVLRandom; exit; end;
if ImgRRR2B.Visible = false then begin ImgRRR2B.Visible := true; RANDOMZ := 2; LVLRandom; exit; end;
if ImgRRR5B.Visible = true then begin ImgRRR5B.Visible := false; RANDOMZ := 4; LVLRandom; exit; end;
if ImgRRR4B.Visible = true then begin ImgRRR4B.Visible := false; RANDOMZ := 3; LVLRandom; exit; end;
if ImgRRR3B.Visible = true then begin ImgRRR3B.Visible := false; RANDOMZ := 2; LVLRandom; exit; end;
if ImgRRR2B.Visible = true then begin ImgRRR2B.Visible := false; RANDOMZ := 1; LVLRandom; exit; end;
end;
// Level 3
procedure TForm1.LabelRRR3MouseEnter(Sender: TObject);
begin ImgRRR3.Visible:= true; end;
procedure TForm1.LabelRRR3MouseLeave(Sender: TObject);
begin ImgRRR3.Visible:= false; end;
procedure TForm1.LabelRRR3Click(Sender: TObject);
begin
if ImgRRR1B.Visible = false then begin ImgRRR1B.Visible := true; RANDOMZ := 1; LVLRandom; exit; end;
if ImgRRR2B.Visible = false then begin ImgRRR2B.Visible := true; RANDOMZ := 2; LVLRandom; exit; end;
if ImgRRR3B.Visible = false then begin ImgRRR3B.Visible := true; RANDOMZ := 3; LVLRandom; exit; end;
if ImgRRR5B.Visible = true then begin ImgRRR5B.Visible := false; RANDOMZ := 4; LVLRandom; exit; end;
if ImgRRR4B.Visible = true then begin ImgRRR4B.Visible := false; RANDOMZ := 3; LVLRandom; exit; end;
if ImgRRR3B.Visible = true then begin ImgRRR3B.Visible := false; RANDOMZ := 2; LVLRandom; exit; end;
end;
// Level 4
procedure TForm1.LabelRRR4MouseEnter(Sender: TObject);
begin ImgRRR4.Visible:= true; end;
procedure TForm1.LabelRRR4MouseLeave(Sender: TObject);
begin ImgRRR4.Visible:= false; end;
procedure TForm1.LabelRRR4Click(Sender: TObject);
begin
if ImgRRR1B.Visible = false then begin ImgRRR1B.Visible := true; RANDOMZ := 1; LVLRandom; exit; end;
if ImgRRR2B.Visible = false then begin ImgRRR2B.Visible := true; RANDOMZ := 2; LVLRandom; exit; end;
if ImgRRR3B.Visible = false then begin ImgRRR3B.Visible := true; RANDOMZ := 3; LVLRandom; exit; end;
if ImgRRR4B.Visible = false then begin ImgRRR4B.Visible := true; RANDOMZ := 4; LVLRandom; exit; end;
if ImgRRR5B.Visible = true then begin ImgRRR5B.Visible := false; RANDOMZ := 4; LVLRandom; exit; end;
if ImgRRR4B.Visible = true then begin ImgRRR4B.Visible := false; RANDOMZ := 3; LVLRandom; exit; end;
end;
// Level 5
procedure TForm1.LabelRRR5MouseEnter(Sender: TObject);
begin ImgRRR5.Visible:= true; end;
procedure TForm1.LabelRRR5MouseLeave(Sender: TObject);
begin ImgRRR5.Visible:= false; end;
procedure TForm1.LabelRRR5Click(Sender: TObject);
begin
if ImgRRR1B.Visible = false then begin ImgRRR1B.Visible := true; RANDOMZ := 1; LVLRandom; exit; end;
if ImgRRR2B.Visible = false then begin ImgRRR2B.Visible := true; RANDOMZ := 2; LVLRandom; exit; end;
if ImgRRR3B.Visible = false then begin ImgRRR3B.Visible := true; RANDOMZ := 3; LVLRandom; exit; end;
if ImgRRR4B.Visible = false then begin ImgRRR4B.Visible := true; RANDOMZ := 4; LVLRandom; exit; end;
if ImgRRR5B.Visible = false then begin ImgRRR5B.Visible := true; RANDOMZ := 5; LVLRandom; exit; end;
if ImgRRR5B.Visible = true then begin ImgRRR5B.Visible := false; RANDOMZ := 4; LVLRandom; exit; end;
end;
// Options
procedure TForm1.LabelOptionsMouseEnter(Sender: TObject);
begin ImgOptions.Visible:= true; end;
procedure TForm1.LabelOptionsMouseLeave(Sender: TObject);
begin  if Panel1.Visible = false then ImgOptions.Visible:= false; end;
procedure TForm1.LabelOptionsClick(Sender: TObject);
begin
  if Panel1.Visible = true then begin
  Panel1.Visible := false;
  LabelFound.Visible := true;
  if edit1.Text <> '' then edit1.Visible := true; end else begin
  Panel1.Visible := true;
  LabelFound.Visible := false;
  edit1.Visible := false;
  end;
  Panel1.BringToFront;
  PanelScrolling.BringToFront; // to be sure PanelScrolling is on top of Panel1
  end;
// Exit
procedure TForm1.LabelExitMouseEnter(Sender: TObject);
begin ImgExit.Visible:= true; end;
procedure TForm1.LabelExitMouseLeave(Sender: TObject);
begin ImgExit.Visible:= false; end;
procedure TForm1.LabelExitClick(Sender: TObject);
begin form1.Close; end;
// GO
procedure TForm1.LabelGOMouseEnter(Sender: TObject);
begin ImgGo.Visible:= true; end;
procedure TForm1.LabelGOMouseLeave(Sender: TObject);
begin ImgGo.Visible:= false; end;
// About
procedure TForm1.LabelAboutMouseEnter(Sender: TObject);
begin ImgAbout.Visible:= true; end;
procedure TForm1.LabelAboutMouseLeave(Sender: TObject);
begin if Form2.Visible = false then ImgAbout.Visible:= false; end;
procedure TForm1.LabelAboutClick(Sender: TObject);
begin Form2.Show; end;



procedure TForm1.Timer1Timer(Sender: TObject);
begin
LabelScrolling.Left := LabelScrolling.Left -1;
if LabelScrolling.Left = -4577 then Timer1.Enabled:=false;
end;




// Select INPUT folder
procedure TForm1.LabelInputFolderClick(Sender: TObject);
begin
//If SelectDirectory('Select Presets (*.milk) Folder ...','',ChoixRepertoire)
If SelectDirectory('Select Presets (*.milk) Folder ...',ExtractFilePath(Application.ExeName),ChoixRepertoire)
Then begin
if ChoixRepertoire = '' then exit;  // in case empty, then stop
if length(ChoixRepertoire) > 30 then // in case long then reduce it
LabelINPUT.Caption := shortstr(ChoixRepertoire) else LabelINPUT.Caption := ChoixRepertoire;

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
end;


// Select OUTPUT folder
procedure TForm1.LabelOutputFolderClick(Sender: TObject);
begin
//If SelectDirectory('Select Destination Folder ...','',ChoixRepertoire2)
If SelectDirectory('Select Destination Folder ...',ExtractFilePath(Application.ExeName),ChoixRepertoire2)
Then begin
if ChoixRepertoire2 = '' then exit;  // in case empty, then stop
if length(ChoixRepertoire2) > 30 then // in case long then reduce it
LabelOUTPUT.Caption := shortstr(ChoixRepertoire2) else LabelOUTPUT.Caption := ChoixRepertoire2;
end;
end;


// Drag and Drop
procedure TForm1.FormDropFiles(Sender: TObject; const FileNames: array of String);
var
  i: Integer;
begin
  if ImgOn2.Visible then begin
  for i := Low(FileNames) to High(FileNames) do

if  FileNames[i] = '' then exit;
if length( FileNames[i]) > 30 then // in case long then reduce it
LabelINPUT.Caption := shortstr( FileNames[i]) else LabelINPUT.Caption :=  FileNames[i];

ListFiles := TStringList.Create;
RCGen2(FileNames[i], '*.milk', ListFiles, true);

x:= ListFiles.Count;
if x < 1 then LabelFound.Font.Color := clRed else LabelFound.Font.Color := clLime;
if x > 1 then LabelFound.Caption := inttostr(x) + ' Presets found.' else LabelFound.Caption := inttostr(x) + ' Preset found.';
if LabelOUTPUT.Caption = '' then begin
if length(FileNames[i]) > 25 then // in case long then reduce it
LabelOUTPUT.Caption := shortstr(FileNames[i])+'MASHED' else LabelOUTPUT.Caption := FileNames[i]+'MASHED';
ChoixRepertoire2 := FileNames[i]+'MASHED';
end;
end;
end;





