return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			terminal_colors = true, -- add neovim terminal colors
			undercurl = true,
			underline = true,
			bold = true,
			italic = {
				strings = true,
				emphasis = true,
				comments = true,
				operators = false,
				folds = true,
			},
			strikethrough = true,
			invert_selection = false,
			invert_signs = false,
			invert_tabline = false,
			invert_intend_guides = false,
			inverse = true, -- invert background for search, diffs, statuslines and errors
			contrast = "hard", -- can be "hard", "soft" or empty string
			palette_overrides = {
				bright_green = "#a9b665",
				bright_yellow = "#d8a657",
				bright_red = "#ea6962",
				bright_orange = "#e78a4e",
			},
			overrides = {},
			dim_inactive = false,
			transparent_mode = true,
		})
		vim.cmd("colorscheme gruvbox")
		vim.cmd([[
        hi Normal guibg=NONE ctermbg=NONE
        hi LineNr guibg=NONE ctermbg=NONE
        hi StatusLine guibg=NONE ctermbg=NONE
        hi StatusLineNC guibg=NONE ctermbg=NONE
  ]])
	end,
}
