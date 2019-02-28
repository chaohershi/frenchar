#NoEnv
#SingleInstance ignore ; allow only one instance of this script to be running
SendMode Input

ScriptName := "Frenchar"
ScriptVersion := "1.0.1.0"
CopyrightNotice := "Copyright (c) 2018 Chaohe Shi"

; set script texts
TEXT_Suspend := "Suspend"
TEXT_Help := "Help"
TEXT_About := "About"
TEXT_Exit := "Exit"
TEXT_HelpMsg := "
(
L'accent aigu (é)
type e// for é

L'accent grave (à, è, ù)
type a\\ for à
type e\\ for è
type u\\ for ù

L'accent circonflexe (â, ê, î, ô, û)
type a^^ or a66 for â
type e^^ or e66 for ê
type i^^ or i66 for î
type o^^ or o66 for ô
type u^^ or u66 for û

Le tréma (ë, ï, ü)
type e:: or e;; for ë
type i:: or i;; for ï
type u:: or u;; for ü

La cédille (ç)
type c,, for ç

Le e dans l'o (œ)
type oe-- for œ
)"

; add tray menu
Menu, Tray, NoStandard ; remove the standard menu items
Menu, Tray, Add, %TEXT_Suspend%, SuspendProgram
Menu, Tray, Default, %TEXT_Suspend% ; set the default menu item
Menu, Tray, Add
Menu, Tray, Add, %TEXT_Help%, HelpMsg
Menu, Tray, Add, %TEXT_About%, AboutMsg
Menu, Tray, Add
Menu, Tray, Add, %TEXT_Exit%, ExitProgram
Menu, Tray, Tip, %ScriptName% ; change the tray icon's tooltip

Return ; end of the auto-execute section

SuspendProgram:
Menu, Tray, ToggleCheck, %TEXT_Suspend%
Suspend, Toggle
Return

HelpMsg:
MsgBox, 0, %TEXT_Help%, %TEXT_HelpMsg%

Return

AboutMsg:
MsgBox, 0, %TEXT_About%,
(
%ScriptName% %ScriptVersion%

%CopyrightNotice%
)
Return

ExitProgram:
ExitApp

; L'accent aigu (é)
:?*:e//::é

; L'accent grave (à, è, ù)
:?*:a\\::à
:?*:e\\::è
:?*:u\\::ù

; L'accent circonflexe (â, ê, î, ô, û)
:?*:a^^::â
:?*:e^^::ê
:?*:i^^::î
:?*:o^^::ô
:?*:u^^::û

:?*:a66::â
:?*:e66::ê
:?*:i66::î
:?*:o66::ô
:?*:u66::û

; Le tréma (ë, ï, ü)
:?*:e::::ë
:?*:i::::ï
:?*:u::::ü

:?*:e;;::ë
:?*:i;;::ï
:?*:u;;::ü

; La cédille (ç)
:?*:c,,::ç

; Le e dans l'o (œ)
:?*:oe--::œ
