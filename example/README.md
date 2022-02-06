# App-less Setup

A wip example to setup the camera without the app and internet connection.

1. copy all files onto an sd card
2. edit all needed data (SSID, PASSWORD, root:changeme, local.ntp.server)
3. boot camera with sd card
4. wait for the cam to appear in your network
5. Adjust the QR-Content
6. Generate a [QR-Code](https://kazuhikoarase.github.io/qrcode-generator/js/demo/) with your adjusted QR-Content and let the camera scan it. (Necessary to get ONFIV working, idk why.)