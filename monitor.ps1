$intervalProcesses = 5  # Interval to monitor processes in seconds
$intervalFolder = 10    # Interval to monitor folder contents in seconds
$folderPath = "C:/Users/sorint/Desktop/code/Transmogrified"

function MonitorProcesses {
    Write-Host "Running processes:"
    Get-Process | Select-Object Id, ProcessName, UserName | Format-Table -AutoSize
}

function MonitorFolder {
    Write-Host "Folder contents:"
    Get-ChildItem $folderPath | Select-Object Name, LastWriteTime | Format-Table -AutoSize
}

while ($true) {
    MonitorProcesses
    Start-Sleep -Seconds $intervalProcesses

    MonitorFolder
    Start-Sleep -Seconds $intervalFolder
}

///added  test dev 
