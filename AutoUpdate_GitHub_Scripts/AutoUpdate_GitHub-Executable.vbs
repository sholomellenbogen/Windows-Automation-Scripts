Option Explicit

Dim objShell
Set objShell = CreateObject("Wscript.Shell")


objShell.Run "powershell -file ""C:\Users\Sholom Ellenbogen\Desktop\Side Projects\Programming\Windows-Automation-Scripts\AutoUpdate_GitHub_Scripts\AutoUpdate_GitHub.ps1""", 0, true

wscript.quit