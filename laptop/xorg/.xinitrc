
xrandr -s 1366x768

xsetroot -cursor_name left_ptr

# setting two keyboard layouts
# 'grp:toggle' is for switching layouts via right Meta key. 
# 'compose:rctrl' is for mapping compose key to right Ctrl
# 'ctrl: nocaps' is for making Caps an another Ctrl.
setxkbmap -layout 'us,ru' -option 'grp:toggle, compose:rctrl, ctrl:nocaps'

exec xmonad
