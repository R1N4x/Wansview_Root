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