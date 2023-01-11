netsh wlan set autoconfig enabled="yes" interface="Wi-Fi"

while (!Test-NetConnection google.com -Quiet){
    Start-Sleep -Seconds 5
}

netsh wlan set autoconfig enabled="no" interface="Wi-Fi"

