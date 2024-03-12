return {
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-tree/nvim-web-devicons" },
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	{
		-- enabled = false,
		"Mofiqul/vscode.nvim",
		-- lazy = false,
		name = "vscode",
		priority = 1000,
		init = function()
			vim.cmd.colorscheme("vscode")
		end,
	},
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim",  -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {},
		version = "^1.0.0", -- optional: only update when a new 1.x version is released
	},
	{
		enabled = false,
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 100,
		init = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		enabled = false,
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 100,
		opts = {},
		init = function()
			vim.cmd.colorscheme("tokyonight-moon")
		end,
	},
	{
		"tpope/vim-sleuth",
		event = { "BufRead", "BufNewFile" },
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		config = true,
	},
	{
		"windwp/nvim-ts-autotag",
		event = "InsertEnter",
		dependencies = {
			-- "nvim-treesitter/nvim-treesitter"
			"madmaxieee/nvim-treesitter", -- use my own fork for typst support
		},
	},
	{
		"folke/neodev.nvim",
		ft = "lua",
		opts = {},
	},
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
		opts = {},
	},
	{
		-- the original repo is broken, use my mirror
		-- "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		"madmaxieee/lsp_lines.nvim",
		event = "LspAttach",
		config = function()
			require("lsp_lines").setup()
			vim.diagnostic.config({ virtual_text = false })
		end,
	},
	{
		"folke/zen-mode.nvim",
		cmd = "ZenMode",
		keys = {
			{
				"<leader>z",
				mode = "n",
				"<cmd>ZenMode<CR>",
				{ desc = "Toggle zen mode" },
			},
		},
		opts = {},
	},
	{
		"NvChad/nvim-colorizer.lua",
		ft = {
			"html",
			"css",
			"scss",
			"typescript",
			"typescriptreact",
			"javascript",
			"javascriptreact",
		},
		opts = {
			user_default_options = {
				RGB = true, -- #RGB hex codes
				RRGGBB = true, -- #RRGGBB hex codes
				names = false,
				tailwind = true,
			},
		},
	},
	{
		"sindrets/diffview.nvim",
		cmd = {
			"DiffviewOpen",
			"DiffviewFileHistory",
			"DiffviewClose",
			"DiffviewToggleFiles",
		},
	},
	{
		"RRethy/vim-illuminate",
		event = "LspAttach",
		dependencies = {
			-- "nvim-treesitter/nvim-treesitter"
			"madmaxieee/nvim-treesitter", -- use my own fork for typst support
		},
		config = function()
			require("illuminate").configure({
				providers = {
					"lsp",
					"treesitter",
					"regex",
				},
			})
		end,
	},
}
