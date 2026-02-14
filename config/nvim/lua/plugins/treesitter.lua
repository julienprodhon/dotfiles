return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.config",
	opts = {
		-- Automatically install missing parsers when entering buffer
		auto_install = true,

		-- Pre-install latex parser (not auto-detected from .tex)
		ensure_installed = { "latex" },

		highlight = {
			enable = true,
			-- Set to false if you have issues with highlighting
			additional_vim_regex_highlighting = false,
		},

		indent = {
			enable = true,
		},
	},
}
