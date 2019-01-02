args = "-c" & " -l " & """~/.local/kitty.app/bin/kitty"""
WScript.CreateObject("Shell.Application").ShellExecute "bash", args, "", "open", 0