return {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
        local lspconfig = require('lspconfig')
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        lspconfig.lua_ls.setup({
            capabilities = capabilities,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' },
                    },
                    completion = {
                        callSnippet = 'Replace',
                    },
                },
            },
        })

        lspconfig.emmet_ls.setup({
            capabilities = capabilities,
            filetypes = {
                'html',
                'typescriptreact',
                'javascriptreact',
                'css',
                'sass',
                'scss',
                'less',
            },
        })

        lspconfig.gopls.setup({
            capabilities = capabilities,
            settings = {
                gopls = {
                    experimentalPostfixCompletions = true,
                    analyses = {
                        unusedparams = true,
                        shadow = true,
                    },
                    staticcheck = true,
                },
            },
            init_options = {
                usePlaceholders = true,
            },
        })
    end,
}
