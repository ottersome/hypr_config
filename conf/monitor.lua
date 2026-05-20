hl.monitor({
  output="desc:Samsung Electric Company LC34G55T H1AK500000",
  mode="3440x1440@165.00",
  position="0x0",
  scale="1.00"
})
hl.monitor({
  output="desc:GWD ARZOPA 2022110200001",
  mode="2560x1440@144.00",
  position="auto-left",
  scale="1.25"
})
hl.monitor({
  output="eDP-1",
  mode="2560x1600@240.00Hz",
  -- position="auto-down",
  scale="1.25"
  ---, vrr, 0
})


hl.env("GDK_SCALE","1.25")

-- TODO:: Figure out how to port this to lua
hl.config({
  xwayland = {
    force_zero_scaling = true
  }
})


