$strIpAddress = "10.194.8.222"
$intOnline = 0
$intDown = 0
clear

do {
    
    if(Test-Connection $strIpAddress -Count 1 -Quiet -TimeToLive 50)
        {
            $intOnline += 1
            Write-Host "DB Online test # $intOnline" -ForegroundColor Green
            Write-Host "DB Online test # $intDown" -ForegroundColor Red
        }
    else
        {
            $intDown += 1
            Write-Host "DB Online test # $intOnline" -ForegroundColor Green
            Write-Host "DB Online test # $intDown" -ForegroundColor Red
        }

    Start-Sleep -Seconds 2
    clear

}while ($true)