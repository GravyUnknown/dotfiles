local wezterm = require("wezterm")
local config = {}
local act = wezterm.action

config.color_scheme = "Tokyo Night"
config.font = wezterm.font("RecMonoCasual Nerd Font")
config.default_prog = { "pwsh.exe" }
config.keys = {
	{
		key = "+",
		mods = "ALT|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "_",
		mods = "ALT|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},	
	{
		key = "t",
		mods="CTRL|SHIFT",
		action = wezterm.action.SpawnTab 
		{
			DomainName = 'WSL:archlinux'
	}
},
	{
		key = "t",
		mods = "CTRL",
		action = act.SpawnTab 
		{
			DomainName = 'local'
		}
	}

	
}

config.use_fancy_tab_bar = false
config.default_cursor_style = "SteadyUnderline"
config.window_background_opacity = 0.9;
config.front_end = "WebGpu"

return config

