# shutdowntimer

Shell script "shutdowntimer" uses Zenity to display progress bar. Zenity is used for notifications in Ubuntu, Xubuntu and possibly other distros.
Unless you close the notification window before the countdown ends, the computer shuts down.
At script start, a sound is played. The script uses package mpg123 to play the "sound.mp3" file. It expexts it in "$HOME/.shutdowntimer" folder. 
The shutdowntimer script is placed in "/usr/bin/" so to run it simply type "shutdowntimer". It will shut down your computer in 10 seconds. 
If you wish to change this, you are welcomme to edit the script. For any script to be able to shutdown the computer without root priviledges, 
you must run "sudo chmod u+s /sbin/shutdown". 
Installing the debian package takes care of all the dependencies, folders, etc, so just install debian package and possibly setup a keyboard shortcut
for shutdowntimer.
 