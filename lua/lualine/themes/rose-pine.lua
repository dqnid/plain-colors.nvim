local p = require("rose-pine.palette")

return {
	normal = {
		a = { bg = p.muted, fg = p.base },
		b = { bg = p.bar, fg = p.text },
		c = { bg = p.bar, fg = p.text },
	},
	insert = {
		a = { bg = p.iris, fg = p.base },
		b = { bg = p.bar, fg = p.text },
		c = { bg = p.bar, fg = p.text },
	},
	visual = {
		a = { bg = p.foam, fg = p.base },
		b = { bg = p.bar, fg = p.text },
		c = { bg = p.bar, fg = p.text },
	},
	replace = {
		a = { bg = p.pine, fg = p.base },
		b = { bg = p.bar, fg = p.text },
		c = { bg = p.bar, fg = p.text },
	},
	command = {
		a = { bg = p.subtle, fg = p.base },
		b = { bg = p.bar, fg = p.text },
		c = { bg = p.bar, fg = p.text },
	},
	inactive = {
		a = { bg = p.palid, fg = p.muted },
		b = { bg = p.bar, fg = p.muted },
		c = { bg = p.bar, fg = p.muted },
	},
}
