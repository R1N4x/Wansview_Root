# Wansview_Root

Gain root access and enabling telnet.

You need to setup the camera once via App for now.

Place the files on a sd-card and boot the camera with the sd-card.
Telnet will be enabled with `root` and `changeme` as password.

`ipc_after.sh` is copied to persistent storage and will be called on each boot.
**This survives a reset! Delete the `ipc_after.sh` manually if you wish to remove root access!**
To disable Telnet just edit the `syscfg.ini`.
