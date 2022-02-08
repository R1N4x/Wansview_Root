# Wansview Root

**Tested on firmware version 07.26100.05.16**

Just copy all files onto an sd-card and boot the cam with it.

It does the following:

1. The camera will selfupdate the syscfg.ini in its persistent filesystem with the one provided on the sd-card. **It overwrites it!**

The example will: 
- enable Telnet
- set the Network to DHCP
- disable WiFi
- set the timezone to 30 (seems not to work tho)
- set a local NTP on 10.10.1.1
- enable http on port 80 (for <ip_of_camera>/api/v1/snap.cgi?chn=0)
- disable upnp (not tested what it is actually doing, so off)
- disable third ddns (camera is blocked in my firewall, but off it is)
- enable ONFIV on port 8899 (**caution!** default login! admin:123456)
- enable RTSP on port 554 (**caution!** default login! admin:123456)


2. The camera checks for `facModify` and `facTest.ini` on the sd-card, if both are found it will execute `facModify`.

`facModify` will then:

1. Copy `ipc_after.sh` into the persistent filesystem of the cam. This script will be called at every boot of the camera.
2. rename the files to prevent a bootloop
3. reboot the camera

`ipc_after.sh` is called on boot and will:

1. wait 5+3 seconds, to wait fpr the filesystem to be mounted
2. set the root password to `changeme`
