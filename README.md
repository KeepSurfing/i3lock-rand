# i3lock-rand
Have your i3lock wallpaper randomly choosen from a list of wallpapers, and the ring customized for each.

<p align="center">
  <img src="https://thumbs.gfycat.com/CandidActiveAmericankestrel-size_restricted.gif" alt="demo_gif" />
</p>


# Table of What
1. [What it is ?](#what1)
2. [What it does ?](#what2)
3. [What are the Dependencies ?](#what3)
4. [What to do to use it ?](#what4)
5. [What are the limitations / known bugs ?](#what5)
6. [What will be done next ?](#what6)


## What it is ? <a name="what1"></a>
This is a bash script calling [i3lock-color](https://github.com/Raymo111/i3lock-color) (lockscreen forked from i3lock, allowing to configure the lock ring colors, size, position and much more) with a randomly choosen wallpaper, and custom parameters according to the wallpaper.

## What it does ? <a name="what2"></a>
This script go to the path given in the *.config* file and randomly choose a file in it.
Then, i3lock-color is called with the parameters given for this wallpaper in the *.config* file.


## What are the Dependencies ? <a name="what3"></a>
You will need [i3lock-color](https://github.com/Raymo111/i3lock-color) to make it works.


## What to do to use it ? <a name="what4"></a>
Out of the box :
* Give execution rights to the *lock.sh* script.
    sudo chmod +x lock.sh
* Bind the *lock.sh* script to a keyboard input.
=> Aaaaannnd voilà ! Use your key binding to lock your screen and get a random and nice lockscreen.

If you want to use another folder for the wallpapers :
* Edit the *.config* file's *wallpapers_path* variable to point to your folder.
    wallpapers_path="<my_path>"

If you want to add a wallpaper of yours :
* Get a lock picture (.png for transparency).
* Merge your wallpaper and the lock picture, with the color and size adapted to your wallpaper.
* Add a configuration for your wallpaper in the *.config* file (play with the parameters to fit to your needs, and use i3lock-color very well described man page)
* Add an *elif* case in the *lock.sh* script, with a pattern matching your file in the *elif*, and the *$config* variable pointing to the variable added in the *.config* file.


## What are the limitations / known bugs ? <a name="what5"></a>
* Once your session is locked using this script, you can still over-lock the session with the native screen locker having you to log twice to unlock it.
* If a non-png file is put in the path given in the *.config* file, the original i3lock will be used (white background).


## What will be done next ? <a name="what6"></a>
* Correct the displayed strings position / color / size
* Add another wallpaper
* Make it fancier/funnier ?
