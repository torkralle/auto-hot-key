    if ErrorLevel != 1
        Send, {AltUp}
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; 修飾キーはUp, Downが必要

; Emacs風キーバインド
F13 & b::Left
F13 & n::Down
F13 & p::Up
F13 & f::Right

F13 & d::Del
F13 & h::BS

F13 & e::End
F13 & a::Home

; control + kはクリップボードにコピーで代替
F13 & k::
    Send {ShiftDown}{END}{SHIFTUP}
    Sleep 50
    Send ^c
    Sleep 50
    Send {Del}
    Return

; クリップボードがペースト
F13 & y::^v

; Ctrl + cに代替
F13 & c::^c

; 半角全角キーを使う
F13 & Space::
    Send {vkF3sc029}
    Return


; Space&sc11DだとSpaceは使えなくなるが行けた

; power toys runによるランチャー起動
Ctrl & Space::
    Send, {AltDown}{Space}{AltUp}
    Return

; 画面移動　    
; caps + key => win + key
F13 & r::
    Send {RWinDown}{Right}{RWinUp}
    Return
F13 & l::
    Send {RWinDown}{Left}{RWinUp}
    Return
F13 & u::
    Send {RWinDown}{Up}{RWinUp}
    Return

;マウスを反転
WheelUp::
    Send {WheelDown}
    Return

WheelDown::
    Send {WheelUp}
    Return

; 数字全角→半角
1::Send, {Numpad1}
2::Send, {Numpad2}
3::Send, {Numpad3}
4::Send, {Numpad4}
5::Send, {Numpad5}
6::Send, {Numpad6}
7::Send, {Numpad7}
8::Send, {Numpad8}
9::Send, {Numpad9}
0::Send, {Numpad0}

; Command + Q
Ctrl & q::
    Send, {AltDown}{F4}{AltUp}
    Return

; Command + Tab
Ctrl & Tab::AltTab