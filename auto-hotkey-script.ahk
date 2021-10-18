#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F13 & b::Left
F13 & n::Down
F13 & p::Up
F13 & f::Right

F13 & d::Del
F13 & h::BS

F13 & e::End
F13 & a::Home

F13 & k::
    Send {ShiftDown}{END}{SHIFTUP}
    Sleep 50
    Send ^c
    Sleep 50
    Send {Del}
    Return

F13 & y::^v

F13 & c::^c

; 半角全角キーを使う
F13 & Space::
    Send {vkF3sc029}
    Return

; 検索窓を開く うまく動かない
^Space::
    Send #
    Return

; 画面を動かす

; mouseの向きを逆に
WheelUp::
    Send {WheelDown}
    Return

WheelDown::
    Send {WheelUp}
    Return