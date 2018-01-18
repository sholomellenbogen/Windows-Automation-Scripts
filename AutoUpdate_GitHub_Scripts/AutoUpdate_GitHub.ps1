
##--SET PATH OF LOCAL CLONE TO CURRENT DIRECTORY OF SCRIPT--##
$dir = get-location
$gitDir = "$dir\"		#CHANGE THIS IF YOUR LOCAL CLONE PATH IS NOT THE SAME AS THIS SCRIPT'S PATH


##--CHANGE DIRECTORY TO THE CLONE PATH--##
cd $gitDir


##--CREATE COMMIT MESSAGE--##
$commitMsg = (get-date).ToString('M/d/y -- H:mm:ss') + "  Update"


##--CHECK IF ANY UPDATES ARE NEEDED--##
[string]$status = git status
if ($status -NotLike "*nothing to commit*"){

	##--UPDATE REPOSITORY--##
	git add -A
	git commit -m $commitMsg
	git push origin master
	
} ##END IF


##--GO BACK TO ORIGINAL SCRIPT DIRECTORY--##
cd ..

##--GIVE SOME EXTRA TIME JUST IN CASE--##
Start-Sleep -s 15

##--ENSURE THE POWERSHELL SCRIPT PROCESS ENDS--##
Stop-Process $pid