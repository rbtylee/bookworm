[Software] Is there a way to run Calamares with out it needing the live user password?
https://forums.debian.net/viewtopic.php?p=788722&hilit=live+user+password#p788722

The issue: on the live ISO I am making for bookworm pkexec asks for a password and it should not ask for a password nor even open

In BL6 bullseye it does not open but all the live-config and policykit settings seem the same
also in debian-live-12.2.0-amd64-xfce.iso it does not open and all settings the same
but in LMDE (mints bookworm ISO) pkexec opens and all settings the same
I am missing something I just do not know what ... and clearly the mint team missed it as well

OK i have a solution to the pkexec issue on the bookworm ISO
now no password for pkexec nor does it open

The solution is use the file /lib/live/config/1080-policykit from a more recent version of live-config: version 11.0.4.

one of the config files for live-conf (1080-policykit) contains the line         
if ! pkg_is_installed "policykit-1" || \
 
but bookworm uses polkitd, not policykit-1. policykit-1 is now a
transitional package and install polkitd
bullseye had policykit-1 not polkitd

so 1080-policykit has to be altered to work with polkitd

oddly enough this change has been added to live-config version 11.0.4 but that is not in bookworm repo it is in debian trixie  repo
But it works for debian-live-12.2.0-amd64-xfce.iso because some desktop environments pull in the actual policykit-1 pkg and use it even tho polkitd is still installed
I am not installing the old policykit-1 pkg but instead am altering the 1080-policykit file. Right now I am just copying the new file over BUT this needs added to my Bookworm rebod code instead
so this whole issue was because debian bookworm version of live-config is broken
this is an imprtant pkg and proves my point that Ubuntu is more stable overall than debian. Ubuntu would have fixed this shit
this morning makes my 6th day on this fucking issue

See: Debian Bug report logs - #1037295
     live-config: starting Calamares installer requires a password (which is 'live')
     https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1037295
     
     Update the polkit configuration to polkitd (Closes: #1037295)
     from live-conf git:
     https://salsa.debian.org/live-team/live-config/-/commit/568d98750a86b5732bfa25bb1e02249356dfe4fa?view=inline
