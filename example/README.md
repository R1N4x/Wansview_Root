# App-less setup

A wip example to setup the camera without the app and internet connection.

1. copy all files onto an sd card
2. edit all needed data (SSID, PASSWORD, root:changeme, local.ntp.server)
3. boot camera with sd card
4. wait for the camera to appear in your network (try Telnet)
5. adjust the QR-Content
6. generate a [QR-Code](https://kazuhikoarase.github.io/qrcode-generator/js/demo/) with your adjusted QR-Content and let the camera scan it. (Necessary to get ONFIV working, idk why.)

When you're connected via serial you'll see the results of the QR-Code scan. 
You can change the Wifi settings a few moments after reboot with a simple QR-Code...

# Explanation

A boot script in the cameras firmware will check for a file named `facDiag` on the SD-Card and executes it.
The prepared `facDiag` then copies a `ipc_after.sh` script to the persistent memory of the camera. This `ipc_after.sh` is called at startup by the firmware and will set a root password for us.
`facDiag` also copies a `wpa_supplicant.conf` to the persistant memory and the camera will use the content to connect to WiFi.
The `syscfg.ini` in the persistent memory will be updated with the contents of the `syscfg.ini` from the SD-Card on every boot. 

I still need to figure out why I need to scan a QR-Code to get ONFIV working, something is triggered. Sadly the whole camera control and such is in a compiled binary.