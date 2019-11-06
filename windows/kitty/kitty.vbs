args = "~ -- bash -c -l ~/.local/kitty.app/bin/kitty"
WScript.CreateObject("Shell.Application").ShellExecute "wsl", args, "", "open", 0
