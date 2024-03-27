local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	"folke/which-key.nvim",
	{
	  "folke/tokyonight.nvim",
	  lazy = false,
	  priority = 1000,
	  opts = {},
	},

	{ "folke/neoconf.nvim", cmd = "Neoconf" },

	"folke/neodev.nvim",

	{ 'nvim-telescope/telescope.nvim',
		tag = '0.1.6',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	{ "rose-pine/neovim", name = "rose-pine" },

	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
	{ 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {}},

	-- LSPs
		-- LSP support
		{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
		{'neovim/nvim-lspconfig'},
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},

		-- Autocompletion
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-path'},
		{'hrsh7th/cmp-buffer'},

		-- Snippets
		{'L3MON4D3/LuaSnip'},
		{'rafamadriz/friendly-snippets'},

	{'ekalinin/Dockerfile.vim'},
}

local opts = {}

require("lazy").setup(plugins, opts)
require("rose-pine").setup({
	highlight_groups = {
		Comment = { fg = "#050505" }
	},
	styles = {
		italic = true,
	}
})
vim.cmd("colorscheme rose-pine-moon")
vim.cmd("lua ColorMyPencils()")
-- vim.cmd("colorscheme rose-pine-main")
-- vim.cmd("colorscheme rose-pine-moon")
-- vim.cmd("colorscheme rose-pine-dawn")
