local options = require("rose-pine.config").options
local variants = {
	main = {
		border = "#464b57",
		border_variant = "#363c46",
		border_focused = "#47679e",
		border_selected = "#293b5b",
		border_transparent = "#000000",
		border_disabled = "#414754",
		surface_background = "#2f343e",
		background = "#3b414d",
		element_background = "#2e343e",
		element_hover = "#363c46",
		element_active = "#454a56",
		text = "#dce0e5",
		text_muted = "#a9afbc",
		text_placeholder = "#878a98",
		text_accent = "#74ade8",
		editor_foreground = "#acb2be",
		editor_background = "#282c33",
		editor_line_number = "#c8ccd4",
		editor_active_line_number = "#dce0e5",
		terminal_background = "#282c33",
		terminal_foreground = "#dce0e5",
		syntax_attribute = "#74ade8",
		syntax_boolean = "#bf956a",
		syntax_comment = "#5d636f",
		syntax_constant = "#dfc184",
		syntax_function = "#73ade9",
		syntax_keyword = "#b477cf",
		syntax_string = "#a1c181",
		none = "NONE",
	},
	dawn = {
		_nc = "#f8f0e7",
		base = "#faf4ed",
		surface = "#fffaf3",
		overlay = "#f2e9e1",
		muted = "#9893a5",
		subtle = "#797593",
		text = "#575279",
		love = "#b4637a",
		gold = "#ea9d34",
		rose = "#d7827e",
		pine = "#286983",
		foam = "#56949f",
		iris = "#907aa9",
		leaf = "#6d8f89",
		highlight_low = "#f4ede8",
		highlight_med = "#dfdad9",
		highlight_high = "#cecacd",
		none = "NONE",
	},
}

if options.palette ~= nil and next(options.palette) then
	-- handle variant specific overrides
	for variant_name, override_palette in pairs(options.palette) do
		if variants[variant_name] then
			variants[variant_name] = vim.tbl_extend("force", variants[variant_name], override_palette or {})
		end
	end
end

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return vim.o.background == "light" and variants.dawn or variants[options.dark_variant or "main"]
