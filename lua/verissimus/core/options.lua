vim.opt.guicursor = ""

-- disable netrw
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- got from nvim tree  https://github.com/nvim-tree/nvim-tree.lua
-- set termguicolors to enable highlight groups

vim.opt.termguicolors = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.signcolumn = "yes"

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- vim.op-- Hide mode indicator
vim.o.showmode = false

vim.diagnostic.config({
	virtual_text = true,
	underline = false,
	severity_sort = true,
})

local signs = { ERROR = "海", WARN = "愛", HINT = "お", INFO = "え" }
vim.diagnostic.config({
	virtual_text = {
		prefix = function(diagnostic)
			return signs[vim.diagnostic.severity[diagnostic.severity]]
		end,
	},
})

-- setting g:netrw_keepdir to 0 tells netrw to make vim's current directory track netrw's browsing directory.
-- vim.g.netrw_keepdir = 0

-- Hide the banner
vim.g.netrw_banner = 0

-- recursive copy of directories
vim.g.netrw_localcopydircmd = "cp -r"
