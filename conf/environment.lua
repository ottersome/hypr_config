hl.env("XDG_CURRENT_DESKTOP","Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")


hl.env("QT_QPA_PLATFORM","wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME","qt6ct")
hl.env("QT_QPA_PLATFORMTHEME","qt5ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION","1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

-- Utils
hl.env("PAGER", "bat")
