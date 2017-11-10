; Autohotkey Capslock Remapping Script 
; Danik
; More info at http://danikgames.com/blog/?p=714
; danikgames.com
; 
; Functionality:
; - Deactivates capslock for normal (accidental) use.
; - Hold Capslock and drag anywhere in a window to move it (not just the title bar).
; - Access the following functions when pressing Capslock: 
;     Cursor keys           - J, K, L, I
;     Enter                 - Space
;     Home, PgDn, PgUp, End - U, O, Y, H
;     Backspace and Del     - N, M
;
;     Insert                - B
;     Select all            - A
;     Cut, copy, paste      - S, D, F
;     Close tab, window     - W, E
;     Esc                   - R
;     Next, previous tab    - Tab, Q
;     Undo, redo            - , and .
;  
; To use capslock as you normally would, you can press WinKey + Capslock


; This script is mostly assembled from modified versions of the following awesome scripts:
;
; # Home Row Computing by Gustavo Duarte: http://duartes.org/gustavo/blog/post/home-row-computing for 
; Changes: 
; - Does not need register remapping of AppsKey using SharpKeys.
; - Uses normal cursor key layout 
; - Added more hotkeys for insert, undo, redo etc.
;
; # Get the Linux Alt+Window Drag Functionality in Windows: http://www.howtogeek.com/howto/windows-vista/get-the-linux-altwindow-drag-functionality-in-windows/
; Changes: The only change was using Capslock instead of Alt. This 
; also removes problems in certain applications.


#x::Run Excel

#n::
IfWinExist Sublime Text
	WinActivate
else
	Run C:\Program Files\Sublime Text 3\sublime_text.exe
return

#o::
IfWinExist email.email@email.com - Outlook
	WinActivate
else
	Run C:\Program Files (x86)\Microsoft Office\Office15\OUTLOOK.EXE
return

#c::
IfWinExist Cmder
	WinActivate
else
	Run C:\Users\user\bin\Cmder.exe,C:\Users\user\bin\
return

#a::
IfWinExist Aqua Data Studio 6.5.9
	WinActivate
else
	Run C:\Program Files (x86)\Aqua Data Studio 6.5\datastudio.exe,C:\Program Files (x86)\Aqua Data Studio 6.5\
return

#b::RUN H:\

#Persistent
SetCapsLockState, AlwaysOff



; Capslock + jkli (left, down, up, right)

Capslock & j::Send {Blind}{Left DownTemp}
Capslock & j up::Send {Blind}{Left Up}

Capslock & k::Send {Blind}{Down DownTemp}
Capslock & k up::Send {Blind}{Down Up}

Capslock & i::Send {Blind}{Up DownTemp}
Capslock & i up::Send {Blind}{Up Up}

Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}

; Capslock + uohy (pgdown, pgup, home, end)

Capslock & h::SendInput {Blind}{Home Down}
Capslock & h up::SendInput {Blind}{Home Up}

Capslock & n::SendInput {Blind}{End Down}
Capslock & n up::SendInput {Blind}{End Up}

Capslock & u::SendInput {Blind}{PgUp Down}
Capslock & u up::SendInput {Blind}{PgUp Up}

Capslock & o::SendInput {Blind}{PgDn Down}
Capslock & o up::SendInput {Blind}{PgDn Up}


; Capslock + TAB/q (prev/next tab)

Capslock & q::SendInput {Ctrl Down}{Tab Down}
Capslock & q up::SendInput {Ctrl Up}{Tab Up}
Capslock & Tab::SendInput {Ctrl Down}{Shift Down}{Tab Down}
Capslock & Tab up::SendInput {Ctrl Up}{Shift Up}{Tab Up}

; Capslock + ,/. (undo/redo)

Capslock & ,::SendInput {Ctrl Down}{z Down}
Capslock & , up::SendInput {Ctrl Up}{z Up}
Capslock & .::SendInput {Ctrl Down}{y Down}
Capslock & . up::SendInput {Ctrl Up}{y Up}


#::\
#h::#
