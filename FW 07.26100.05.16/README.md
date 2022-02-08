# Wansview Root

**Tested on firmware version 07.26100.05.16**

Just copy all files onto an sd-card and boot the cam with it.

It does the following:

1. The camera will selfupdate the syscfg.ini in its persistent filesystem with the one provided on the sd-card. **It overwrites it!**
The example will: enable Telnet, set the Network to DHCP, disable WiFi, set a local NTP, set the timezone (seems not to work tho), enable ONFIV on port 8899, enable RTSP on port 554
2. The camera checks for `facModify` and `facTest.ini` on the sd-card, if both are found it will execute `facModify`.

`facModify` will then:

1. Copy `ipc_after.sh` into the persistent filesystem of the cam. This script will be called at every boot of the camera.
2. rename the files to prevent a bootloop
3. reboot the camera

`ipc_after.sh` is called on boot and will:

1. wait 5+3 seconds, just for sure.
2. set the root password to `changeme`