-- Autostart
------------------------------------------------------- 

hl.on("hyprland.start", function ()
  hl.exec_cmd("hyprpaper -c ~/.config/hypr/hyprpaper.conf")
  hl.exec_cmd("dms run")
  hl.exec_cmd("xdg-settings get default-url-scheme-handler")
  hl.exec_cmd("wl-paste --type text --watch cliphist store") -- Stores only text data
  hl.exec_cmd("wl-paste --type image --watch cliphist store") -- Stores only image data
  hl.exec_cmd("tmux setenv -g HYPRLAND_INSTANCE_SIGNATURE \"$HYPRLAND_INSTANCE_SIGNATURE\"")
  hl.exec_cmd("exec-once=xrdb ~/.Xresources # Purely for sxiv colors")
  hl.exec_cmd("exec-once = systemctl --user start hyprpolkitagent")
end)
