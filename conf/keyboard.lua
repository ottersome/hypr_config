------------------------------------------------------- 
-- Keyboard Layout
-- https://wiki.hypr.land/Configuring/Basics/Variables/#input
-------------------------------------------------------
hl.config({
  input = {
      kb_layout = "us",
      numlock_by_default = true,
      follow_mouse = 1,
      mouse_refocus=false,
      -- kb_options = "caps:swapescape",

      touchpad = {
          natural_scroll = false,
          scroll_factor = 1.0,
      },
      sensitivity = 0 -- Pointer speed: -1.0 - 1.0, 0 means no modification.
  }
})
