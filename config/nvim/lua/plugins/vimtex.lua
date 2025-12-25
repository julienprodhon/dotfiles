return {
  "lervag/vimtex",
  ft = { "tex", "bib" },
  config = function()
    vim.g.vimtex_view_method = "zathura"
  end,
}
