#!/usr/bin/env fish

if test -n $WSL_DISTRO_NAME
    set wezterm_cmd wezterm.exe
    set pane_id $(powershell.exe -NoProfile -NonInteractive -Command "\$Env:WEZTERM_PANE")
else
    set wezterm_cmd wezterm
    set pane_id $WEZTERM_PANE
end

wezterm.exe cli split-pane --left --percent 30 -- ~/.config/helix/wezilex.fish $wezterm_cmd $pane_id > /dev/null
