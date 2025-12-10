return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- Setup Mason
    require("mason").setup()
    
    -- Setup mason-lspconfig
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",        -- Lua
        "bashls",        -- Bash
        "clangd",        -- C/C++
        "cmake",         -- CMake
        "dockerls",      -- Dockerfile
        "jsonls",        -- JSON
        "julials",       -- Julia
        "pylsp",         -- Python
        "sqlls",         -- SQL
        "yamlls",        -- YAML
      },
    })

    -- Keymaps when LSP attaches
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      end,
    })

    -- List of servers to enable
    local servers = {
      "bashls", "clangd", "cmake", "dockerls", 
      "jsonls", "julials", "pylsp", "sqlls", "yamlls"
    }
    
    -- Lua with special settings
    vim.lsp.config.lua_ls = {
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
        },
      },
    }
    
    -- Enable all servers (including lua_ls)
    table.insert(servers, 1, "lua_ls")
    vim.lsp.enable(servers)
  end,
}
