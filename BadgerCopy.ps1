#    ___       __        _____               ______   _ __ 
#   / _ \___  / /  ___  / ___/__  ___  __ __/ __/ /  (_) /_
#  / , _/ _ \/ _ \/ _ \/ /__/ _ \/ _ \/ // /\ \/ _ \/ / __/
# /_/|_|\___/_.__/\___/\___/\___/ .__/\_, /___/_//_/_/\__/ 
#                              /_/   /___/                 
# Insert Pun about RoboCop Here                                                        
   
Write-Host -ForegroundColor Cyan "   \      oo											";
Write-Host -ForegroundColor Cyan "    \____|\mm		- Hello! Gonna copy some shit, Sir!	";
Write-Host -ForegroundColor Cyan "    //_//\ \_\										";
Write-Host -ForegroundColor Cyan "   /K-9/  \/_/										";
Write-Host -ForegroundColor Cyan "  /___/_____\											";
Write-Host -ForegroundColor Cyan "  -----------						   					";

Start-Sleep -s 2
 
Write-Host -ForegroundColor Cyan " DOING ALL THE MOTHERFUCKING MATHS, SON!";
Write-Host -ForegroundColor Cyan " ADDING NUMBERS AND LETTERS TO SHIT!!! ";

Start-Sleep -s 2
 
#    ___       __      _   __         _      __   __      
#   / _ \___  / /  ___| | / /__ _____(_)__ _/ /  / /__ ___
#  / , _/ _ \/ _ \/ _ \ |/ / _ `/ __/ / _ `/ _ \/ / -_|_-<
# /_/|_|\___/_.__/\___/___/\_,_/_/ /_/\_,_/_.__/_/\__/___/
#

$strARKDir = "C:\Ark Servers\Servers"
$strARKBak = "C:\backup"
$strARKSaveLoc = "ShooterGame\Saved\SavedArks"
 
#Specific Ark Instance Save Folders 
$strArkTISave = ("TheIsland"); 
$strArkTCSave = ("TheCenter"); 
$strArkSESave = ("ScorchedEarth"); 
 
#    ___       __        ___                       
#   / _ \___  / /  ___  / _ | ___________ ___ _____
#  / , _/ _ \/ _ \/ _ \/ __ |/ __/ __/ _ `/ // (_-<
# /_/|_|\___/_.__/\___/_/ |_/_/ /_/  \_,_/\_, /___/
#                                        /___/     

#This is all that fun crap, where what goes from where. Fucking Magical!
$argsFromFolders = ("$strARKDir\$strArkTISave\$strARKSaveLoc", "$strARKDir\$strArkTCSave\$strARKSaveLoc", "$strARKDir\$strArkSESave\$strARKSaveLoc"); 
$argsToFolders = ("$strARKBak\$strArkTISave", "$strARKBak\$strArkTCSave", "$strARKBak\$strArkSESave"); 


#    ___       __        _______            
#   / _ \___  / /  ___  / ___/ /__ ___ ____ 
#  / , _/ _ \/ _ \/ _ \/ /__/ / -_) _ `/ _ \
# /_/|_|\___/_.__/\___/\___/_/\__/\_,_/_//_/
#                                          
# Deletes the data in the backup folder, because we don't wanna overwrite shit, it's temp anyways, remember? 

Write-Host -ForegroundColor Cyan "  .-.												";
Write-Host -ForegroundColor Cyan " (o o)  - BOO! I'm a data deleting ghost bitch!	";
Write-Host -ForegroundColor Cyan " | O \											";
Write-Host -ForegroundColor Cyan "  \   \											";
Write-Host -ForegroundColor Cyan "   `~~~'											";
Write-Host -ForegroundColor Cyan " 													";
  
Remove-Item -Recurse -Force $argsToFolders 

Write-Host -ForegroundColor Cyan " Cleaning out backup folder, Weeeeee! ";

Start-Sleep -s 2

#    ___       __        ___       _          ________        __ ________   _          
#   / _ \___  / /  ___  / _ \___  (_)__  ___ /_  __/ /  ___ _/ //_  __/ /  (_)__  ___ _
#  / , _/ _ \/ _ \/ _ \/ // / _ \/ / _ \/ _ `// / / _ \/ _ `/ __// / / _ \/ / _ \/ _ `/
# /_/|_|\___/_.__/\___/____/\___/_/_//_/\_, //_/ /_//_/\_,_/\__//_/ /_//_/_/_//_/\_, / 
#                                      /___/                                    /___/  
 
Write-Host -ForegroundColor Cyan " Reticulating Splines ";

# Oh this? Just RoboCopy doing it's thang!
 
For ($i=0; $i -lt $argsFromFolders.Length; $i++) { 
    Write-Host -ForegroundColor Green "Processing" $argsFromFolders[$i] "To" $argsToFolders[$i]; 
    robocopy $argsFromFolders[$i] $argsToFolders[$i] *.* /S /MT:16 /XJ /R:0 /W:5 /NP /XX 
     }

Write-Host -ForegroundColor DarkGreen "                   __						";
Write-Host -ForegroundColor DarkGreen "                  / *_) We be done bitches!	";
Write-Host -ForegroundColor DarkGreen "       _.----. _ /../						";
Write-Host -ForegroundColor DarkGreen "     /............./							";
Write-Host -ForegroundColor DarkGreen "  __/..(...|.(...|							";
Write-Host -ForegroundColor DarkGreen " /__.-|_|--|_|-|_|							";

Start-Sleep -s 5

Write-Host -ForegroundColor Green " ";
Write-Host -ForegroundColor Green " OK Let's Zip this shit up Son!	";

#	   __       __ _      ___          ____  _      ____        _      __ 
#	  / /  ___ / /( )___ / _ \__ _____/_  / (_)__  / __/_______(_)__  / /_
#	 / /__/ -_) __//(_-</ , _/ // / _ \/ /_/ / _ \_\ \/ __/ __/ / _ \/ __/
#	/____/\__/\__/ /___/_/|_|\_,_/_//_/___/_/ .__/___/\__/_/ /_/ .__/\__/ 
#	                                       /_/                /_/         
# Calls the 7Zip script to zip shit up!

Start-Sleep -s 2

$ScriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
$scriptPath = Join-Path $ScriptDirectory "BadgerZip.ps1"
Invoke-Expression "$scriptPath"

