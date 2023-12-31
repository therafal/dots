local notify = require("notify")

notify.setup({
  stages = "fade_in_slide_out",
  -- default timeout for notifications
  timeout = 5000,
  -- For stages that change opacity this is treated as the highlight behind the window
  -- Set this to either a highlight group or an rgb hex value e.g. "#000000"
  background_colour = "#000000",
  -- Icons for the different levels
  icons = {ERROR = " ", WARN = " ", INFO = " ", DEBUG = " ", TRACE = "✎ "},
})
