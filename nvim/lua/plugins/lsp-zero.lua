return {
    'VonHeikemen/lsp-zero.nvim', 
    branch = 'v3.x',
    dependencies = {
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/nvim-cmp'},
        {'L3MON4D3/LuaSnip'},
    },
    config=function()
        local lsp_zero = require('lsp-zero')
        local lspconfig = require('lspconfig')
        lsp_zero.extend_lspconfig()

        lsp_zero.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp_zero.default_keymaps({buffer = bufnr})
        end)

        -- see :help lsp-zero-guide:integrate-with-mason-nvim
        -- to learn how to use mason.nvim with lsp-zero
        require('mason').setup({})
        require('mason-lspconfig').setup({
            handlers = {
                lsp_zero.default_setup,
            }
        })

        lspconfig.pyright.setup({
            capabilities = capabilities
        })
        lspconfig.lua_ls.setup({
            capabilities = capabilities
        })
        lspconfig.clangd.setup({
            capabilities = capabilities
        })

        local cmp = require "cmp"
        cmp.setup({
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },

        })
    end,
}

