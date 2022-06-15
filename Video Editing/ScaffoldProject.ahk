#include <AutoHotInterception>

#SingleInstance, Force
#Persistent
SendMode Input
SetWorkingDir, %A_ScriptDir%

AHI := new AutoHotInterception()
keyboardId := AHI.GetKeyboardId(0x040B, 0x2000)
cm1 := AHI.CreateContextManager(keyboardId)

CreateFolder(FolderName) {
    Send, ^+n
    Send %FolderName%
    Send, {Enter}
    Sleep, 500
}

#if cm1.IsActive	; Put hotkeys here.
    #IfWinActive ahk_class CabinetWClass
    j:: 
        ; Basic Project
        CreateFolder("Videos")
        CreateFolder("Audio")
        CreateFolder("Assets")
        CreateFolder("Documents")
    return