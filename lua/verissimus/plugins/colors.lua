if true then
	return {}
end

return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000,
	config = function()
		local pine = require("rose-pine")
		pine.setup({
			variant = "main",
			dark_variant = "main",
			bold_vert_split = false,
			dim_nc_background = false,
			disable_background = true,
			-- disable_float_background = false,
			disable_italics = false,
			styles = {
				bold = true,
				italic = true,
				transparency = true,
			},
			groups = {
				border = "highlight_low",
				link = "iris",
				panel = "surface",

				error = "love",
				hint = "iris",
				info = "foam",
				note = "pine",
				todo = "rose",
				warn = "gold",

				git_add = "foam",
				git_change = "rose",
				git_delete = "love",
				git_dirty = "rose",
				git_ignore = "muted",
				git_merge = "iris",
				git_rename = "pine",
				git_stage = "iris",
				git_text = "rose",
				git_untracked = "subtle",

				h1 = "iris",
				h2 = "foam",
				h3 = "rose",
				h4 = "gold",
				h5 = "pine",
				h6 = "foam",
			},

			highlight_groups = {
				VertSplit = { fg = "base", bg = "base" },
				TelescopeBorder = { fg = "highlight_low", bg = "none" },
				TelescopeNormal = { bg = "none" },
				TelescopePromptNormal = { bg = "none" },
				TelescopeResultsNormal = { fg = "subtle", bg = "none" },
				TelescopeSelection = { fg = "text", bg = "base" },
				TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
			},
		})
		vim.cmd("colorscheme rose-pine")
	end,
}
