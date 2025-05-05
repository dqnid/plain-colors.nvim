local options = require("rose-pine.config").options
local variants = {
	dark = {
		_nc = "#16141f",
		base = "#282c33", -- background
		surface = "#2e343e",
		overlay = "#454a56",
		muted = "#a9afbc",
		border = "#464b57",
		bar = "#464b57",
		palid = "#838994", -- folders
		subtle = "#5d636f", -- 293b5b
		text = "#dce0e5",
		love = "#eb6f92",
		gold = "#dfc184",
		rose = "#bf956a",
		pine = "#b477cf",
		lake = "#73ade9",
		orange = "#ffda3d",
		foam = "#5c949e",
		iris = "#47679e",
		leaf = "#a1c181",
		highlight_low = "#21202e",
		highlight_med = "#464b57",
		highlight_high = "#5d636f",
		tree_bg = "#2f343e",
		none = "NONE",
	},
	darker = {
		_nc = "#141c21",
		base = "#141c21", -- background
		surface = "#2e343e",
		overlay = "#454a56",
		muted = "#a9afbc",
		border = "#464b57",
		bar = "#72777A",
		palid = "#5b6064", -- folders
		subtle = "#72777A", -- 293b5b
		text = "#dce0e5",
		love = "#eb6f92",
		gold = "#dfc184",
		rose = "#bf956a",
		pine = "#b477cf",
		lake = "#73ade9",
		orange = "#ffda3d",
		foam = "#5c949e",
		iris = "#47679e",
		leaf = "#a1c181",
		highlight_low = "#21202e",
		highlight_med = "#464b57",
		highlight_high = "#5d636f",
		tree_bg = "#2f343e",
		none = "NONE",
	},
	light = {
		_nc = "#16141f",
		base = "#fdf6e3", -- background
		surface = "#f3edda",
		overlay = "#f5efdc",
		muted = "#34555e",
		border = "#9faaa8",
		bar = "#cfd0c4",
		palid = "#34555e", -- folders
		subtle = "#002a35", -- 293b5b
		text = "#001025",
		love = "#288bd1",
		gold = "#849a04",
		rose = "#849903",
		pine = "#288bd1",
		lake = "#b58903",
		orange = "#ffda3d",
		foam = "#2ba198",
		iris = "#47679e",
		leaf = "#d67245",
		highlight_low = "#ffd9d2",
		highlight_med = "#e9ead0",
		highlight_high = "#f5e6d0",
		tree_bg = "#f3edda",
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
