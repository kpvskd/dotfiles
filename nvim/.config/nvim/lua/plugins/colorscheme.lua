return {
    'sainnhe/edge',
    lazy = false,
    priority = 1000,
    config = function()
        vim.g.edge_transparent_background = true
        vim.g.edge_enable_italic = true
        vim.cmd.colorscheme('edge')
    end,
}
