------------------------------------------------------- 
-- Window rules
------------------------------------------------------- 

hl.window_rule({
  name = "Chromium Browser",
  match = {
    class = "Chromium"
  },
  tile=true,
})
hl.window_rule({
  name = "LibreOffice fixed to tile",
  match = {
    class = "libreoffice-calc"
  },
  tile=true,
  float=false,
})
hl.window_rule({
  match = {
    class="org.pulseaudio.pavucontrol",
  },
  size={"(monitor_w*0.3)","(monitor_h*0.5)"},
  float=true
})
hl.window_rule({
  match = {
    class="blueman-manager-wrapped",
  },
  size={"(monitor_w*0.3)","(monitor_h*0.5)"},
  float=true
})
hl.window_rule({
  match = {
    class="blueman-manager",
  },
  size={"(monitor_w*0.3)","(monitor_h*0.5)"},
  float=true
})
hl.window_rule({
  match = {
    class="^(qalculate-gtk)$",
  },
  size={"(monitor_w*0.3)","(monitor_h*0.5)"},
  float=true
})
hl.window_rule({
  match = {
    class="matplotlib",
  },
  size={"(monitor_w*0.3)","(monitor_h*0.5)"},
  float=true
})
hl.window_rule({
  match = {
    class="feh",
  },
  size={"(monitor_w*0.3)","(monitor_h*0.5)"},
  float=true
})
hl.window_rule({
  match = {
    title="floatty",
  },
  size={"(monitor_w*0.6)","(monitor_h*0.6)"},
  float=true
})
hl.window_rule({
  match = {
    initial_title="Calendar Reminders",
  },
  float=true
})
-- hl.windowrule({float on, center on, size 900 600, match:title floatty
-- hl.windowrule({float on, match:class nm-connection-editor


hl.window_rule({
  match = {
    class="vlc",
  },
  opacity="1 override 1 override",
})
hl.window_rule({
  match = {
    title="^(zsh)$",
  },
  opacity="0.80 override 0.80 override",
})
hl.window_rule({
  match = {
    title="^(tmux)$",
  },
  opacity="0.80 override 0.80 override",
})
hl.window_rule({
  match = {
    class="com.mitchellh.ghostty",
  },
  opacity="0.80 override 0.80 override",
})

-- Browser Picture in Picture
hl.window_rule({
  match = {
    class="^(Picture-in-Picture)$"
  },
  float=true,
  pin=true,
  move={"(window_w*0.695)","(window_h*0.04)"}

})

-- Pesky libre tools rendering

hl.window_rule({
  workspace=8,
  match = {
    class="^(libreoffice.*|soffice)$"
  }
})

-- TODO: DOnt know what these do
-- hl.windowrule({border_size 0, match:float 0, match:workspace w[tv1]s[false]
-- hl.windowrule({border_size 0, match:float 0, match:workspace f[1]s[false]
