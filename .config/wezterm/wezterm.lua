local wezterm = require("wezterm")
return {
	color_scheme = "Catppuccin Mocha",
	enable_tab_bar = false,
	font_size = 15.0,
	font = wezterm.font("JetBrains Mono"),

	send_composed_key_when_left_alt_is_pressed = true,
	send_composed_key_when_right_alt_is_pressed = true,

	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},

	macos_window_background_blur = 30,
	window_background_opacity = 0.8,
}
