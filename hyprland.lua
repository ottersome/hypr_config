
-- env = XDG_CURRENT_DESKTOP,Hyprland
-- env = GDM_BACKEND,nvdia-drm
hl.env("LIBVA_DRIVER_NAME","nvidia")
hl.env("XDG_SESSION_TYPE","wayland")
hl.env("__GLX_VENDOR_LIBRARY_NAME","nvidia")
hl.env("GDM_BACKEND","nvdia-drm")
-- hl.env("AQ_NO_ATOMIC","1")
hl.env("AQ_DRM_DEVICES","/dev/dri/card1")

-- env = XDG_CURRENT_DESKTOP,Hyprland


require("conf/monitor")
require("conf/autostart")
require("conf/environment")
require("conf/keyboard")
require("conf/window")
require("conf/decoration")
require("conf/layout")
require("conf/misc")
require("conf/keybinding")
require("conf/windowrule")
require("conf/animations")
require("conf/workspaces")
-- require("conf/gestures")
