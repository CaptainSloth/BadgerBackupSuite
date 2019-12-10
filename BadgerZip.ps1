# __   __        _      _    _         __   _____  _ 
# \ \ / /_ _ _ _(_)__ _| |__| |___ ___ \ \ / / _ \| |
#  \ V / _` | '_| / _` | '_ \ / -_|_-<  \ V / (_) |_|
#   \_/\__,_|_| |_\__,_|_.__/_\___/__/   |_| \___/(_)

# Default location for 7zip, no need to change, unless you're some kinda fucking unique butterfly and have to do everything different													
if (-not (test-path "$env:ProgramFiles\7-Zip\7z.exe")) {throw "$env:ProgramFiles\7-Zip\7z.exe needed"} 
set-alias sz "$env:ProgramFiles\7-Zip\7z.exe"

# Edit this shit to tell this bad boy where you wanna pull and push to
$files="c:\backup"
$target="c:\archive"

# No touchy!
$dirs = Get-ChildItem -Path $files | Where-Object { $_.Attributes -eq "Directory" }

#  _______              
# /_  __(_)_ _  ___ ____
#  / / / /  ' \/ -_) __/
# /_/ /_/_/_/_/\__/_/   
#
# Wanna run shit at a certain time? Uncomment this bitch and put in the time, otherwise treat it like an goth kid and LEAVE IT ALONE!
                      
#do {
#Start-Sleep 1
#}
# until ((get-date) -ge (get-date "1:07 PM"))

#  _      ____                 __  __         __  ___          _       __ __                          
# | | /| / / /  ___ _______   / /_/ /  ___   /  |/  /__ ____ _(_)___  / // /__ ____  ___  ___ ___  ___
# | |/ |/ / _ \/ -_) __/ -_) / __/ _ \/ -_) / /|_/ / _ `/ _ `/ / __/ / _  / _ `/ _ \/ _ \/ -_) _ \(_-<
# |__/|__/_//_/\__/_/  \__/  \__/_//_/\__/ /_/  /_/\_,_/\_, /_/\__/ /_//_/\_,_/ .__/ .__/\__/_//_/___/
#                                                      /___/                 /_/  /_/       

# Creates 7z files based on the parent folders name and date, then drops it inside the archive folder
Foreach ($dir in $dirs)
{
      $name = $dir.name
      $newname = $name.ToLower()-replace(" ","")
      sz a -t7z "$target\$newname-$(Get-Date -format M-d-yyyy-H-m)" "$files\$dir"

}

Start-Sleep -s 2

Write-Host -ForegroundColor DarkGreen " 																		";
Write-Host -ForegroundColor DarkGreen " 												:::						";
Write-Host -ForegroundColor DarkGreen "                                              :: :::.					";
Write-Host -ForegroundColor DarkGreen "                        \/,                    .:::::					";
Write-Host -ForegroundColor DarkGreen "            \),          \`-._                 :::888					";
Write-Host -ForegroundColor DarkGreen "            /\            \   `-.             ::88888					";
Write-Host -ForegroundColor DarkGreen "           /  \            | .(                ::88						";
Write-Host -ForegroundColor DarkGreen "          /,.  \           ; ( `              .:8888						";
Write-Host -ForegroundColor DarkGreen "             ), \         / ;``               :::888						";
Write-Host -ForegroundColor DarkGreen "            /_   \     __/_(_                  :88						";
Write-Host -ForegroundColor DarkGreen "              `. ,`..-'      `-._    \  /      :8						";
Write-Host -ForegroundColor DarkGreen "                )__ `.           `._ .\/.								";
Write-Host -ForegroundColor DarkGreen "               /   `. `             `-._______m         _,				";
Write-Host -ForegroundColor DarkGreen "   ,-=====-.-;'                 ,  ___________/ _,-_,''`/__,-.			";
Write-Host -ForegroundColor DarkGreen "  C   =--   ;                   `.`._    V V V       -=-''#==-._			";
Write-Host -ForegroundColor DarkGreen " :,  \     ,|      UuUu _,......__   `-.__A_A_ -. ._ ,--._ ',`` `-		";
Write-Host -ForegroundColor DarkGreen " ||  |`---' :    uUuUu,'          `'--...____/   `' `'.   `				";
Write-Host -ForegroundColor DarkGreen " |`  :       \   UuUu:													";
Write-Host -ForegroundColor DarkGreen " :  /         \   UuUu`-._												";
Write-Host -ForegroundColor DarkGreen "  \(_          `._  uUuUu `-.											";
Write-Host -ForegroundColor DarkGreen "  (_3             `._  uUu   `._											";
Write-Host -ForegroundColor DarkGreen "                     ``-._      `.										";
Write-Host -ForegroundColor DarkGreen "                          `-._    `.										";
Write-Host -ForegroundColor DarkGreen "                              `.    \									";
Write-Host -ForegroundColor DarkGreen "                                )   ;									";
Write-Host -ForegroundColor DarkGreen "                               /   /										";
Write-Host -ForegroundColor DarkGreen "                `.        |\ ,'   /										";
Write-Host -ForegroundColor DarkGreen "                  ',_A_/\-| `   ,'										";
Write-Host -ForegroundColor DarkGreen "                    `--..,_|_,-'\										";
Write-Host -ForegroundColor DarkGreen "                           |     \										";
Write-Host -ForegroundColor DarkGreen "                           |      \__									";
Write-Host -ForegroundColor DarkGreen "                           |__											";
Write-Host -ForegroundColor DarkGreen " 																		";
Write-Host -ForegroundColor DarkGreen "						Enjoy this Trogdor  								";

Start-Sleep -s 2

Write-Host -ForegroundColor DarkGreen "						Wasn't that Fun?								";

Start-Sleep -s 2

Write-Host -ForegroundColor DarkGreen "						Well fuck you then!								";

Start-Sleep -s 2

$ScriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
$scriptPath = Join-Path $ScriptDirectory "BadgerDelete.ps1"
Invoke-Expression "$scriptPath"
