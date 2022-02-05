# Wansview_Root

Gain root access on an Wansview W6 serial console.

Serial connection via pads on the PCB.
Thanks to: https://ipcamtalk.com/threads/wansview-w6-disassembly-finding-serial-console-a-question.55816/

Pins: VCC(square), Rx, GND, Tx 

Place the `facDiag` on the SD and boot the camera.

This is possible through the `boot.sh` in the firmware wich checks for the file "facDiag" on the SD and executes it.