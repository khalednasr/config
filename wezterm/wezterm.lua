-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'catppuccin-mocha'

-- config.font = wezterm.font '0xProto Nerd Font'

config.default_prog = {'wsl.exe', '--shell-type', 'login', '--cd', '~', 'zellij'}

config.colors = {
	cursor_bg = 'grey',
}

config.enable_tab_bar = false
config.window_decorations = "RESIZE|TITLE"

config.max_fps = 120
config.prefer_egl = true
-- and finally, return the configuration to wezterm
return config
