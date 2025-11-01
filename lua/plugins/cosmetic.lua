return {
    {
        'ellisonleao/gruvbox.nvim',
        version = false,
        config = function()
            require("gruvbox").setup()
            vim.cmd('colorscheme gruvbox')
        end,
    },
}
