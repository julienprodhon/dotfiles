return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = false,
      integrations = {
        treesitter = true,
        telescope = true,
        mason = true,
        gitsigns = true,
        -- Add more integrations as you install plugins
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
