hl.config({
  decoration = {
    rounding = 20,
    blur = {
      enabled = true,
      size = 3,
      passes = 3,
      new_optimizations = on,
      ignore_opacity = true,
      xray = true,
      noise=0.1,
      contrast=0.8,
    },
    active_opacity = 1.0,
    fullscreen_opacity = 1.0,
  },
  group = {
    groupbar = {
      enabled = true,
      col = {
        active = "rgba(4f5b58ff)",
        inactive = "rgba(1e2327ff)",
      },
      text_color = "rgba(A09986ff)",
      gradients=true,
      font_family = "JetBrainsMonoNerdFont",
    },
    col = {
      border_active = "rgba(A7C080ff)",
      border_inactive = "rgba(3b4252ff)",
    }
  },
})
