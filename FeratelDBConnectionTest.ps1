$strIpAddress = "10.194.8.222"
$intOnline = 0
$intDown = 0
Clear-Host

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
    Clear-Host

}while ($true)