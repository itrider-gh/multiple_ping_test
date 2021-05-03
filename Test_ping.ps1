
while ($true) {
    $complist = Get-Content "D:/liste_pc.txt"
    $a = Get-Date
    Write-Host $a -ForegroundColor "yellow"
    foreach($comp in $complist){
    	
    	$pingtest = Test-Connection -ComputerName $comp -Quiet -Count 1 -ErrorAction SilentlyContinue
    	if($pingtest){
        	Write-Host $comp -NoNewline
		Write-Host " ONLINE" -ForegroundColor "green"
     	}
     	else{
        	Write-Host $comp -NoNewline
		Write-Host " OFFLINE" -ForegroundColor "red"
     	}
    }
    echo "---------------------------------------------------------------"
    Start-Sleep -Seconds 180
}


