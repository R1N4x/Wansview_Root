# Wansview_Root

Gain root access on an Wansview W6 serial console.

Serial connection via pads on the PCB.
Thanks to: [postmortempriester](https://ipcamtalk.com/threads/wansview-w6-disassembly-finding-serial-console-a-question.55816/)

Pinout: VCC(square), Rx, GND, Tx 

Place the `facDiag` on the SD and boot the camera.
This will clear the root password on every reboot. This is not persistent.

This is possible through the `ipc_start.sh` in the firmware wich checks for the file "facDiag" on the SD and executes it.

**Use at your own risk!**

# syscfg.ini - Telnet access

You can also place the `syscfg.ini` on the SD with custom parameters.
(e.g. your WiFi settings, no need to use the app!)

You can enable Telnet and set a custom NTP server.

This acts as "update" for the configuration, changes there will be persistent.

You don't need to open the front of your camera - just put in a prepared SD-Card.

# /var/syscfg/

Changes here seem to be persistent.
E.g. `funtion.ini`, set `smatlink_enable` to `0` and it seems like the camera won't phone home anymore.
