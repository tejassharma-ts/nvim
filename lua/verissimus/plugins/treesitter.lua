return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		-- configure treesitter
		treesitter.setup({ -- enable syntax highlighting
			highlight = {
				enable = true,
			},

			autotag = {
				enable = true,
				enable_rename = true,
				enable_close = true,
				enable_close_on_slash = true,
				filetypes = { "html", "xml", "typescriptreact" },
			},

			-- Automatically install missing parsers when entering buffer
			auto_install = true,

			-- enable indentation
			indent = {
				enable = true,
				disable = { "html" },
			},
		})
	end,
}
