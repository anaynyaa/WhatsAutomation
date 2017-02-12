Sleep, 1000
Send, {LWINDOWN}
Send, {LWINUP}
Send, WhatsApp
Send, {ENTER}
WinWait, WhatsApp, 
IfWinNotActive, WhatsApp, , WinActivate, WhatsApp, 
WinWaitActive, WhatsApp, 

MouseMove, 150,  50
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
while(color != 0xEEEEEE)
{
	Sleep, 1000
	PixelGetColor, color, %MouseX%, %MouseY%
}
Sleep, 5000

Send, {TAB}
Sleep, 2000
Send, %1%
Sleep, 2000
Send, {TAB}
Sleep, 2000
Send, {TAB}
Sleep, 2000
Send, %2%
Sleep, 2000
; Send, {ENTER}
Sleep, 1000
Send, {ALTDOWN}{F4}{ALTUP}