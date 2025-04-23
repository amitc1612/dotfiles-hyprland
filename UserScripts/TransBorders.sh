#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# for trans borders animation

function random_hex() {
    random_hex=("rgba($(openssl rand -hex 3)bf)")
    echo $random_hex
}

# trans colors only for active window
hyprctl keyword general:col.active_border "rgba(5BCEFAFF) rgba(F5A9B8FF) rgba(FFFFFFFF) rgba(5BCEFAFF) rgba(F5A9B8FF) rgba(FFFFFFFF) rgba(5BCEFAFF) rgba(F5A9B8FF) rgba(FFFFFFFF) rgba(5BCEFAFF)" 270deg

# rainbow colors for inactive window (uncomment to take effect)
hyprctl keyword general:col.inactive_border $(random_hex) $(random_hex) $(random_hex) $(random_hex) $(random_hex) $(random_hex) $(random_hex) $(random_hex) $(random_hex) $(random_hex) 270deg
