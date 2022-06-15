#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#IfWinActive ahk_class Premiere Pro
^e::
	;; Reverse Selected Clip
	Send ^r
	Send {Tab 2}
	Send {Space}
	Send {Tab 4}
	Send {Enter}
	return