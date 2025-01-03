local options = require("rose-pine.config").options
local variants = {
	dqnid = {
		_nc = "#16141f",
		base = "#282c33", -- background
		surface = "#2e343e",
		overlay = "#454a56",
		muted = "#a9afbc",
		border = "#464b57",
		palid = "#838994", -- folders
		subtle = "#5d636f", -- 293b5b
		text = "#dce0e5",
		love = "#eb6f92",
		gold = "#dfc184",
		rose = "#bf956a",
		pine = "#b477cf",
		lake = "#73ade9",
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
		overlay = "#bfd3ef",
		muted = "#34555e",
		border = "#9faaa8",
		palid = "#a2aca9", -- folders
		subtle = "#002a35", -- 293b5b
		text = "#002a35",
		love = "#dc3330",
		gold = "#b58903",
		rose = "#bf956a",
		pine = "#b477cf",
		lake = "#288bd1",
		foam = "#2ba198",
		iris = "#47679e",
		leaf = "#849903",
		highlight_low = "#ffd9d2",
		highlight_med = "#e9ead0",
		highlight_high = "#f5e6d0",
		tree_bg = "#f5e6d0",
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
