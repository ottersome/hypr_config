local mainMod = "SUPER"

hl.bind(mainMod.."+ RETURN", hl.dsp.exec_cmd("ghostty"))
hl.bind(mainMod.."+ SHIFT".."+ RETURN", hl.dsp.exec_cmd("ghostty --title='floatty'"))
-- hl.bind(mainMod.."+ B", hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod.."+ X", hl.dsp.exec_cmd("thunar"))

-- hl.bind(mainMod.."+ SHIFT" .. "+ Q", hl.dsp.exec_cmd("~/.config/hypr/scripts/killactive.sh")) -- Kill active window
hl.bind(mainMod.."+ SHIFT" .. "+ Q", hl.dsp.window.close()) -- Kill active window
hl.bind(mainMod.."+ F", hl.dsp.window.fullscreen({mode = "fullscreen", action="toggle"}))
hl.bind(mainMod.."+ D", hl.dsp.exec_cmd("rofi -show drun -show-icons")) -- Set active window to fullscreen
hl.bind(mainMod.."+ R", hl.dsp.exec_cmd("rofi -show file-browser-extended -file-browser-depth 4 -file-browser-dir ~/ResearchPapers -file-browser-cmd sioyek -theme-str \"window {width: 50%;}\""))
hl.bind(mainMod.."+ G", hl.dsp.exec_cmd("rofi -how file-browser-extended -file-browser-depth 3 -file-browser-dir ~/books/Literature -file-browser-cmd sioyek -theme-str \"window {width: 50%;}\""))
hl.bind(mainMod.."+ T", hl.dsp.exec_cmd("rofi -show file-browser-extended -file-browser-depth 3 -file-browser-dir ~/books/Academic -file-browser-cmd sioyek -theme-str \"window {width: 50%;}\""))
hl.bind(mainMod.."+ SHIFT".."+ E", hl.dsp.exec_cmd("rofi -show emoji \"window {width: 50%;}\""))

hl.bind(mainMod.."+ SHIFT".."+ F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod.."+ O", hl.dsp.window.cycle_next())
hl.bind(mainMod.."+ H", hl.dsp.focus({ direction = "left"}))
hl.bind(mainMod.."+ L", hl.dsp.focus({ direction = "right"}))
hl.bind(mainMod.."+ K", hl.dsp.focus({ direction = "up"}))
hl.bind(mainMod.."+ J", hl.dsp.focus({ direction = "down"}))
-- hl.bind(mainMod.."+ H", hl.dsp.focus({ direction = "left"}))
-- hl.bind(mainMod.."+ L", hl.dsp.focus({ direction = "right"}))
-- hl.bind(mainMod.."+ K", hl.dsp.focus({ direction = "up"}))
-- hl.bind(mainMod.."+ J", hl.dsp.focus({ direction = "down"}))
hl.bind(mainMod.."+ mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod.."+ mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind(mainMod.."+ CTRL".."+ L", hl.dsp.window.resize({ x = 100, y = 0, relative = true }))
hl.bind(mainMod.."+ CTRL".."+ H", hl.dsp.window.resize({ x = -100, y = 0, relative = true }))
hl.bind(mainMod.."+ CTRL".."+ J", hl.dsp.window.resize({ x = 0, y = 100, relative = true }))
hl.bind(mainMod.."+ CTRL".."+ K", hl.dsp.window.resize({ x = 0, y = -100, relative = true }))
hl.bind(mainMod.."+ W", hl.dsp.group.toggle())
hl.bind(mainMod.."+ SHIFT".."+ W", hl.dsp.window.move({ out_of_group = true }))
hl.bind(mainMod.."+ Q", hl.dsp.group.prev())
hl.bind(mainMod.."+ E", hl.dsp.group.next())

hl.bind(mainMod.."+ SHIFT".."+ Y", hl.dsp.exec_cmd("dms ipc call widget toggle weather "))
hl.bind(mainMod.."+ SHIFT".."+ U", hl.dsp.exec_cmd("dms ipc call widget toggle music "))
hl.bind(mainMod.."+ SHIFT".."+ I", hl.dsp.exec_cmd("dms ipc call widget toggle notificationButton"))

hl.bind(mainMod.."+ SHIFT".."+ J", hl.dsp.window.move({ direction = "down", group_aware = true }))
hl.bind(mainMod.."+ SHIFT".."+ H", hl.dsp.window.move({ direction = "left", group_aware = true }))
hl.bind(mainMod.."+ SHIFT".."+ L", hl.dsp.window.move({ direction = "right", group_aware = true }))
hl.bind(mainMod.."+ SHIFT".."+ K", hl.dsp.window.move({ direction = "up", group_aware = true }))

hl.bind(mainMod.."+ SHIFT".."+ S", hl.dsp.exec_cmd("hyprlock & systemctl suspend"))
hl.bind(mainMod.."+ SHIFT".."+ B", hl.dsp.exec_cmd("dms ipc call lock lock"))

hl.bind(mainMod.."+ bracketleft", hl.dsp.layout("move -col"))
hl.bind(mainMod.."+ bracketright", hl.dsp.layout("move +col"))
hl.bind(mainMod.."+ SHIFT".."+ bracketleft",  hl.dsp.layout("swapcol l"))
hl.bind(mainMod.."+ SHIFT".."+ bracketright", hl.dsp.layout("swapcol r"))
hl.bind(mainMod.."+ S", hl.dsp.layout("fit toend"))

hl.bind("SUPER + F10", hl.dsp.pass({ window = "class:^(com\\.obsproject\\.Studio)$"}))
hl.bind("SUPER + F9", hl.dsp.pass({ window = "class:^(com\\.obsproject\\.Studio)$"}))
hl.bind("SUPER + F8", hl.dsp.pass({ window = "class:^(com\\.obsproject\\.Studio)$"}))


hl.bind(mainMod.."+ i", hl.dsp.exec_cmd("/home/ottersome/scripts/proofread_gpt.sh"))
hl.bind(mainMod.."+ m", hl.dsp.exec_cmd("zsh '/home/ottersome/scripts/automatic_monitor_switching.sh'"))
hl.bind(mainMod.."+ z", hl.dsp.exec_cmd("hyprshot --freeze --mode=region --raw --clipboard-only | swappy -f -"))
hl.bind(mainMod.."+ V", hl.dsp.exec_cmd("cliphist list | wofi --dmenu | cliphist decode | wl-copy"))
hl.bind(mainMod.."+ s", hl.dsp.exec_cmd("rofi -modi \"clipboard:greenclip print\" -show clipboard"))
hl.bind(mainMod.."+ ALT".."+ G", hl.dsp.exec_cmd("$HYPRSCRIPTS/gamemode.sh # Toggle game mode"))

hl.bind(mainMod.."+ a", hl.dsp.exec_cmd(" wayscriber --active"))


-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}), { description = "Focus workspace " .. i })
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }), { description = "Move window to workspace " .. i })
end

hl.bind(mainMod .. " + C",         hl.dsp.workspace.toggle_special("magic"), { description = "Toggle special workspace magic" })
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.window.move({ workspace = "special:magic" }), { description = "Move window to special workspace magic" })

hl.bind(mainMod .. " + Tab", hl.dsp.focus({ workspace = "e+1" }), { description = "Switch to next workspace" })
hl.bind(mainMod .. " + SHIFT".."+ Tab",   hl.dsp.focus({ workspace = "e-1" }), { description = "Switch to previous workspace" })


hl.bind(mainMod.."+ SHIFT".."+ M", hl.dsp.exec_cmd("hyprshutdown"))


hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("dms ipc call brightness increment 10"), { repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("dms ipc call brightness decrement 10"), { repeating = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("dms ipc call audio increment 2"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("dms ipc call audio decrement 2"), { repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("dms ipc call audio mute"), { locked =  true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause # Audio play pause"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("dms ipc call mpris playPause # Audio pause"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("dms ipc call mpris next # Audio next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("dms ipc call mpris previous # Audio previous"))
hl.bind(mainMod.."+ equal", hl.dsp.exec_cmd("dms ipc call mpris next # Audio next"))
hl.bind(mainMod.."+ minus", hl.dsp.exec_cmd("dms ipc call mpris previous # Audio previous"))
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("pactl set-source-mute @DEFAULT_SOURCE@ toggle # Toggle microphone"))
hl.bind("XF86TouchpadToggle", hl.dsp.exec_cmd(" ~/scripts/toggle_touchpad.sh"))


hl.bind(mainMod.."+ grave", hl.dsp.exec_cmd(" ~/scripts/esc_caps_toggle.sh"))

hl.bind(mainMod.."+ B", hl.dsp.exec_cmd("/home/ottersome/scripts/bluetooth_connect.sh"))

hl.bind(mainMod.."+ F1", hl.dsp.exec_cmd(" hyprctl dispatch dpms toggle"))
hl.bind(mainMod.."+ F2", hl.dsp.exec_cmd(" hyprctl dispatch dpms off HDMI-A-3"))
hl.bind(mainMod.."+ F3", hl.dsp.exec_cmd(" hyprctl dispatch dpms on HDMI-A-3"))

hl.bind(mainMod.."+ Backslash", hl.dsp.exec_cmd("playerctl play-pause # Audio play pause"))
-- hl.bind(mainMod.."+ SHIFT".."+ \\", hl.dsp.exec_cmd("pactl set-source-mute @DEFAULT_SOURCE@ toggle # Toggle microphone"))

hl.bind("code:238", hl.dsp.exec_cmd(" brightnessctl -d smc::kbd_backlight s +10"))
hl.bind("code:237", hl.dsp.exec_cmd(" brightnessctl -d smc::kbd_backlight s 10- "))
