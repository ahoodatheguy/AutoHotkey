#include <AutoHotInterception>

#SingleInstance, Force
#Persistent
SendMode Input
SetWorkingDir, %A_ScriptDir%

AHI := new AutoHotInterception()
keyboardId := AHI.GetKeyboardId(0x040B, 0x2000)
cm1 := AHI.CreateContextManager(keyboardId)

#if cm1.IsActive	; Put hotkeys here.
    z::
        Run brave.exe
    return

    c::
        Run code
    return

	; Adobe CC
    a::
        Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Photoshop 2021.lnk
    return

    s::
        Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Premiere Pro 2021.lnk
    return

    d::
        Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe After Effects 2021.lnk
    return

	; Microsoft Office
    w::
        Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Word.lnk
    return

    e::
        Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Excel.lnk
    return

    ; Explorer Shortcuts
	+d::
        Run "C:\Users\Ahadu\Downloads"
    return

	+q::
        Run "C:\Users\Ahadu\Documents"
    return

    `::
        Run C:\Users\Ahadu\Documents\AutoHotInterception\Monitor.ahk
    return