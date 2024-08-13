return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"html",
				"css",
				"markdown",
				"yaml",
				"graphql",
				"bash",
				"dockerfile",
				"go",
				"query",
				"rust",
				"lua",
				"vim",
				"vimdoc",
			},
			auto_install = true,
			event = { "BufReadPre", "BufNewFile" },
			indent = { enable = true },
			highlight = { enable = true },
		},
		config = function(_, opts)
			---@diagnostic disable-next-line: missing-fields
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
}
