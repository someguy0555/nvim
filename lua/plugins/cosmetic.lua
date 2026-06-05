return {
    {
        'ellisonleao/gruvbox.nvim',
        version = false,
        config = function()
            require("gruvbox").setup()
            vim.cmd('colorscheme gruvbox')
        end,
    },
    -- {
    --     'nvim-treesitter/nvim-treesitter'
    --     version = false
    -- }
    -- {
    --     "rose-pine/neovim",
    --     name = "rose-pine",
    --     config = function()
    --         vim.cmd('colorscheme rose-pine')
    --     end
    -- },
}
