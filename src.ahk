#SingleInstance force
Hotkey, *lbutton, Toggle

Gui, Add, Tab, x2 y-1 w470 h250 , Home|AutoClick|Colors
Gui, Color, C0C0C0

Gui, Font, S30 CDefault, Cooper Black
Gui, Add, Text, x130 y160 w3000 h70 , Sulfur Client
Gui, Font, S12 CDefault, Cooper Black
Gui, Add, Text, x12 y40 w230 h20 , Autoclicker: Scroll Click
Gui, Tab, AutoClick
Gui, Add, Text, x32 y39 w170 h20 , Min Delay (MS)
Gui, Add, Slider, x32 y59 w410 h30 vMin gMin ToolTip Range0-100, 10
Gui, Add, Text, x32 y99 w170 h20 , Max Delay (MS)
Gui, Add, Slider, x32 y119 w410 h30 vMax gMax ToolTip Range0-200, 40
Gui, Add, Text, x32 y159 w240 h20 , Jitter Power (0 = no jitter)
Gui, Add, Slider, x32 y179 w410 h30 Range0-10 ToolTip vJit gJit, 4
Gui, Tab, Colors
gui, add, button, x20 y50 h20 w70 gsub1, White
gui, add, button, x100 y50 h20 w70 gsub2, Black
gui, add, button, x180 y50 h20 w70 gsub3, Red
gui, add, button, x265 y50 h20 w70 gsub4, Lime
gui, add, button, x345 y50 h20 w70 gsub5, Blue
gui, add, button, x180 y150 h20 w70 gsub6, Yellow
gui, add, button, x20 y150 h20 w75 gsub7, Magenta
gui, add, button, x100 y150 h20 w70 gsub8, Silver
gui, add, button, x265 y150 h20 w70 gsub9, Purple
gui, add, button, x345 y150 h20 w70 gsub10, Green
Gui, Show, x375 y242 h250 w473, Sulfur Client | Build 0.2 | PUBLIC-RELEASE
return

sub1:
 {
   Gui, Color, FFFFFF
 }
return

sub2:
 {
   Gui, Color, 453D3B
 }
return

sub3:
 {
   Gui, Color, FF0000
 }
return

sub4:
 {
   Gui, Color, 00FF00
 }
return

sub5:
 {
   Gui, Color, 0000FF
 }
return

sub6:
 {
   Gui, Color, FFFF00
 }
return

sub7:
 {
   Gui, Color, FF00FF
 }
return

sub8:
 {
   Gui, Color, C0C0C0
 }
return

sub9:
 {
   Gui, Color, 800080
 }
return

sub10:
 {
   Gui, Color, 008000
 }
return

Gui, Submit, NoHide
Return

Min:
{
Gui, Submit, NoHide
}
return

Max:
{
Gui, Submit, NoHide
}
return

Jit:
{
Gui, Submit, NoHide
}
return

;Autoclicker
MButton::Hotkey, *lbutton, Toggle
*lbutton::
Send,{lbutton}
While GetKeyState("lbutton", "P")
{
Send,{lbutton}
Random, delay, %Min%, %Max%
Sleep %delay%
Random, j1, %Jit%,-%Jit%
Random, j2, %Jit%,-%Jit%
MouseMove, %j1%, %j2%, 0, R
}
return

GuiClose:
ExitApp