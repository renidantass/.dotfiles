return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { 
        "pyright",                      -- Python
        "clangd",                       -- C/C++
        "cssls",                        -- CSS
        "dockerls",                     -- Dockerfile
        "eslint",                       -- ESLint
        "gopls",                        -- Go
        "html",                         -- HTML
        "lemminx",                      -- XML
        "rust_analyzer",                -- Rust
        "vuels",                        -- Vue.js (anteriormente Vetur)
        "ansiblels",                    -- Ansible
        "azure_pipelines_ls",           -- Azure Pipelines
        "bashls"                        -- Bash
      },
    },
  },
}
