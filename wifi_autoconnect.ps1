
netsh wlan set autoconfig enabled="yes" interface="Wi-Fi"

$r = 0

while (-Not(Test-Connection -ComputerName www.google.com -Quiet) -and ($r -lt 5)){
    Start-Sleep -Seconds 3
    $r++
}

if (($r -lt 5)){
    netsh wlan set autoconfig enabled="no" interface="Wi-Fi"
}