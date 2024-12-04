return {
    'nvim-treesitter/nvim-treesitter',
    event = { 'BufReadPre', 'BufNewFile' },
    build = ':TSUpdate',
    dependencies = {
        'windwp/nvim-ts-autotag',
    },
    config = function()
        require('nvim-treesitter.configs').setup({
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
            autotag = {
                enable = true,
            },
            ensure_installed = {
                'json',
                'yaml',
                'html',
                'css',
                'markdown',
                'markdown_inline',
                'bash',
                'lua',
                'vim',
                'dockerfile',
                'gitignore',
                'vimdoc',
                'go',
            },
        })
    end,
}
