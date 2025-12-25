return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- Setup Mason
    require("mason").setup()
    
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    
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
        "ruff",          -- Python (linting + formatting)
        "sqlls",         -- SQL
        "texlab",        -- LaTeX
        "yamlls",        -- YAML
      },
    })

    -- Keymaps when LSP attaches
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
        vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
        
        -- Auto-format on save
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = ev.buf,
          callback = function()
            vim.lsp.buf.format({ async = false })
          end,
        })
      end,
    })

    -- List of servers to enable
    local servers = {
      "bashls", "clangd", "cmake", "dockerls",
      "jsonls", "julials", "ruff", "sqlls", "texlab", "yamlls"
    }
    
    -- Lua with special settings
    vim.lsp.config.lua_ls = {
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
        },
      },
    }
    
    -- Clangd with special settings
    vim.lsp.config.clangd = {
      capabilities = capabilities,
      cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        "--header-insertion=iwyu",
      },
    }
    
    -- Enable all servers (including lua_ls)
    table.insert(servers, 1, "lua_ls")
    vim.lsp.enable(servers, { capabilities = capabilities })
  end,
}
