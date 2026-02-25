/*
Mesut Akcan
25/02/2026

github: https://github.com/akcansoft
blog: https://akcansoft.blogspot.com
blog: https://mesutakcan.blogspot.com
youtube: https://www.youtube.com/mesutakcan
*/

#Requires AutoHotkey v2.0
#Include IconButton.ahk

myGui := Gui(, "IconButton Test")
myGui.SetFont("s10", "Segoe UI")
myGui.OnEvent("Close", (*) => ExitApp())

dll := "C:\Windows\System32\shell32.dll"

; Row 1: Text only or icon only
btn1 := IconButton(myGui, "xm w120 h32", "Text Only") ; text only
btn2 := IconButton(myGui, "x+5 w40 h32") ; icon only
btn2.SetIcon(dll, 129, 16)
myGui.Add("Text", "x+5 y15 h32", "Icon only") ; label for icon only button

; Row 2: Icon positions left right
btn3 := IconButton(myGui, "xm w120 h32", "Icon Left")
btn3.SetIcon(dll, 28, 16) ; icon left is default
btn4 := IconButton(myGui, "x+5 w150 h32", "Icon Right")
btn4.SetIcon(dll, 45, 16, "right") ; icon right

; Row 3: Icon positions top bottom
btn5 := IconButton(myGui, "xm w120 h48", "Icon Top")
btn5.SetIcon(dll, 82, 16, "top")
btn6 := IconButton(myGui, "x+5 w120 h48", "Icon Bottom")
btn6.SetIcon(dll, 113, 16, "bottom")

; Row 4: Grayscale on disabled
myGui.Add("Text", "xm", "Toggle disabled:")
chkToggle := myGui.Add("Checkbox", "xm w90 h32", "Enabled")
chkToggle.Value := true

btn7 := IconButton(myGui, "x+5 w150 h36", "Enabled Icon")
btn7.SetIcon(dll, 136, 24)
chkToggle.OnEvent("Click", (*) => (btn7.Enabled := chkToggle.Value))

; Row 5: IconSize
myGui.Add("Text", "xm", "Icon size:")
btn8 := IconButton(myGui, "x+5 w150 h40", "Resize Icon")
btn8.SetIcon(dll, 259, 16, "left")

for item in [{ lbl: "16 px", sz: 16, opt: "xm w55 h40 Group" }, { lbl: "24 px", sz: 24, opt: "x+5 w55 h40" }, { lbl: "32 px",
	sz: 32, opt: "x+5 w55 h40" }] {
	r := myGui.Add("Radio", item.opt, item.lbl)
	r.Value := (item.sz = 16)
	r.OnEvent("Click", ((s, *) => (btn8.IconSize := s)).Bind(item.sz))
}

; Row 6: ClearIcon
myGui.Add("Text", "xm", "ClearIcon:")

iconindex := 139
btnClear := IconButton(myGui, "xm w150 h38", "Has Icon")
btnClear.SetIcon(dll, iconindex, 32, "left")

myGui.Add("Button", "x+5 w80 h32", "Clear").OnEvent("Click", (*) => btnClear.ClearIcon())
myGui.Add("Button", "x+5 w80 h32", "Restore").OnEvent("Click", (*) => btnClear.SetIcon(dll, iconindex, 32, "left"))

; Row 7: Late icon
myGui.Add("Text", "xm", "Late icon (click button to add):")

btn9 := IconButton(myGui, "xm w150 h32", "Click Me")
btn9.OnEvent("Click", (*) => btn9.SetIcon(dll, 269, 16, "left"))

; Row 8: Runtime Text change
myGui.Add("Text", "xm", "Change text at runtime:")

btnTxt := "Original"
btn10 := IconButton(myGui, "xm w150 h32", btnTxt)
btn10.SetIcon(dll, 4, 16, "left")

myGui.Add("Button", "x+5 w80 h32", "Change").OnEvent("Click", (*) => (btn10.Text := "Changed!"))
myGui.Add("Button", "x+5 w80 h32", "Reset").OnEvent("Click", (*) => (btn10.Text := btnTxt))

myGui.Show()