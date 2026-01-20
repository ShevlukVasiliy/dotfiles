-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'farmhouse-dark'
config.color_scheme = 'Tokyo Night Moon'

config.adjust_window_size_when_changing_font_size = false
config.window_padding = {
	left = 10,
	right = 10,
	top = 10,
	bottom = 10,
}
config.enable_tab_bar = false
config.term = "xterm-256color"

config.font_size = 18
config.font =
		wezterm.font('MesloLGS NF', { weight = 'Medium', italic = false })

-- and finally, return the configuration to wezterm
return config
