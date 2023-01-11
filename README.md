# wifi-autoconnect
netsh wlan autoconfig set


To use:

1. Download files
2. Open Task Scheduler and create new Task
3. Select the Trigger tab and add new trigger
  * Select "on an event" from the dropdown
  * Select "Microsoft-Windows-NetworkProfile/Operational" from as the Log
  * Write "10001" as the Event ID
4. Select the Actions tab and add new action
  * Select start a program from the dropdown
  * Write "powershell" in the program/script input
  * Write the following in add arguments: windowstyle hidden -NoLogo -NonInteractive -NoProfile -file "C/:your-file-location/wifi-autoconnect.ps1
