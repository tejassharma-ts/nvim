return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		require("gruvbox").setup({
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
