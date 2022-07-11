; -----------------------------
; Generate folders for project
; Usage: go to File Explorer, hit Ctrl F9
; Date created: 3/11/2022
; -----------------------------

; The below can be run only if a file explorer window is active
#IfWinActive ahk_class CabinetWClass

folders := StrSplit("Documentation,Data,Report", ",")

^F9::  ; the hotkey that runs everything below it
   
for idx, folder in folders{
    createFolders(folder)
}

createFolders(folderName){
    ; control shift n to create new folder
    Send, ^+n 
    Send, %folderName% 
    Send, {Enter}
    Sleep, 2000
}
