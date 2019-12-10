#	╦  ╦┌─┐┬─┐┬┌─┐┌┐ ┬ ┬┬  ┬  ┌─┐┬
#	╚╗╔╝├─┤├┬┘│├─┤├┴┐│ ││  │  └─┐│
#	 ╚╝ ┴ ┴┴└─┴┴ ┴└─┘└─┘┴─┘┴─┘└─┘o
#    ,           ,	
#   /             \	
#  ((__-^^-,-^^-__))	
#   `-_---' `---_-'	
#    <__|o` 'o|__>	
#       \  `  /		
#        ): :(		
#        :o_o:	- I'm a Bull! Weee!	
#         "-"   		
#

$Now = Get-Date
$Days = "7"
$TargetFolder = "C:\archive"
$Extension = "*.7z"
$LastWrite = $Now.AddDays(-$Days)
$Files = Get-Childitem $TargetFolder -Include $Extension -Recurse | Where {$_.LastWriteTime -le "$LastWrite"}

Write-Host -foregroundcolor Cyan "	              *							";
Write-Host -foregroundcolor Cyan "	             / \						";
Write-Host -foregroundcolor Cyan "	            /___\						";
Write-Host -foregroundcolor Cyan "	           ( o o )            * *		";
Write-Host -foregroundcolor Cyan "	           )  L  (           / * *		";
Write-Host -foregroundcolor Cyan "	   ________()(-)()________  /  * * *	";
Write-Host -foregroundcolor Cyan "	 E\| _____ )()()() ______ |/B   * * *	";
Write-Host -foregroundcolor Cyan "	   |/      ()()()(       \|     * * * *	";
Write-Host -foregroundcolor Cyan "	           | )() |						";
Write-Host -foregroundcolor Cyan "	           /     \						";
Write-Host -foregroundcolor Cyan "	          / *  *  \						";
Write-Host -foregroundcolor Cyan "	         /   *  *  \					";
Write-Host -foregroundcolor Cyan "	        / *_  *  _  \   				";
Write-Host -foregroundcolor Cyan " 											";
Write-Host -foregroundcolor Cyan " 		BAZOOKAJOE, WATCH OLD DATA GO!		";
Write-Host -foregroundcolor Cyan "	  (Wizard talk for doing da magic.) 	";
Write-Host -foregroundcolor Cyan "	              							";

Start-Sleep -s 2

#	╔╦╗┬ ┬┌─┐┬─┐┌─┐┌─┐╔╦╗┌─┐┌─┐┬┌─┐╦ ╦┌─┐┌─┐┌─┐┌┐┌┬┌┐┌┌─┐╦ ╦┌─┐┬─┐┌─┐┬
#	 ║ ├─┤├┤ ├┬┘├┤ └─┐║║║├─┤│ ┬││  ╠═╣├─┤├─┘├─┘││││││││ ┬╠═╣├┤ ├┬┘├┤ │
#	 ╩ ┴ ┴└─┘┴└─└─┘└─┘╩ ╩┴ ┴└─┘┴└─┘╩ ╩┴ ┴┴  ┴  ┘└┘┴┘└┘└─┘╩ ╩└─┘┴└─└─┘o
# 
# SRS code below!

foreach ($File in $Files) 
    {
    if ($File -ne $NULL)
        {
        write-host -ForegroundColor DarkRed "Deleting File $File"
        Remove-Item $File.FullName | out-null
        }
    else
        {
        Write-Host -foregroundcolor Green "No more files to delete!"
        }
    }
	
Write-Host -foregroundcolor Green "	              									";
Write-Host -foregroundcolor Green "	                      /|						";
Write-Host -foregroundcolor Green "	                     ///						";
Write-Host -foregroundcolor Green "	                    / /							";
Write-Host -foregroundcolor Green "	                   ||\\							";
Write-Host -foregroundcolor Green "	                   /   \						";
Write-Host -foregroundcolor Green "	                   |   |						";
Write-Host -foregroundcolor Green "	             r     \   \     r^-				";
Write-Host -foregroundcolor Green "	             |\---- |   |---/|					";
Write-Host -foregroundcolor Green "	             /      |   | |  \					";
Write-Host -foregroundcolor Green "	- - - - - - (      /   /      ) - - - - - - -	";
Write-Host -foregroundcolor Green "	  - - - - - \      |   |      / - - - - -		";
Write-Host -foregroundcolor Green "	       __-----^----|   |----^--#----+			";
Write-Host -foregroundcolor Green "	      H            |   |             #			";
Write-Host -foregroundcolor Green "	    /             /     \             \			";
Write-Host -foregroundcolor Green "	   /         /       *      \          \		";
Write-Host -foregroundcolor Green "	 -/        /                 9\         \-		";
Write-Host -foregroundcolor Green "	  {        |                   |        }		";
Write-Host -foregroundcolor Green "	  {        }                   {        }		";
Write-Host -foregroundcolor Green "	  #   ^    }                   {        }		";
Write-Host -foregroundcolor Green "	  {        }-\__---\____-----#-{        }		";
Write-Host -foregroundcolor Green "	 {^_^} v{-_-}                 {*_*} v(0_0}		";
Write-Host -foregroundcolor Green "	              									";
Write-Host -foregroundcolor Green "	              	THE END BITCHES!				";

Start-Sleep -s 5