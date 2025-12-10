return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      -- Install parsers for these languages
      ensure_installed = {
        "bash",
        "c",
        "cmake",
        "comment",
        "cpp",
        "csv",
        "dockerfile",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "json",
        "julia",
        "lua",
        "make",
        "vim",
        "python",
        "sql",
        "yaml",
      },
      
      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,
      
      -- Automatically install missing parsers when entering buffer
      auto_install = true,
      
      highlight = {
        enable = true,
        -- Set to false if you have issues with highlighting
        additional_vim_regex_highlighting = false,
      },
      
      indent = {
        enable = true,
      },
    })
  end,
}
