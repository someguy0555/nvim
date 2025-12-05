vim.g.mapleader = " "

vim.o.termguicolors = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.wrap = false
vim.o.swapfile = false
vim.o.undofile = true
vim.o.winborder = "rounded"
vim.o.signcolumn = "yes"
vim.o.incsearch = true
-- vim.o.ignorecase = true
vim.o.smartindent = true
vim.o.grepprg = "rg --vimgrep"
vim.o.grepformat = "%f:%l:%c:%m"

-- Map
vim.keymap.set({ 'n', 'v', 'x', 'i' }, '<C-c>', '<Esc>')
vim.keymap.set('n', '<leader>o', ':update<CR>:source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>W', ':wall!<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>Q', ':quitall!<CR>')
-- vim.keymap.set('n', '<C-z>', ':quit!<CR>')
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>y', '"+y')
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>d', '"+d')
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>p', '"+p')
vim.keymap.set('n', '<leader><leader>', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>di', function() vim.diagnostic.enable(not vim.diagnostic.is_enabled()) end)
vim.keymap.set('n', '<leader>dq', vim.diagnostic.setqflist)
vim.keymap.set('n', '<leader>dQ', vim.diagnostic.setloclist)
vim.keymap.set('n', '<leader>lq', ':copen<CR>')
vim.keymap.set('n', '<leader>lQ', ':lopen<CR>')
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set("n", "<leader>ln", vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition)
vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation)
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.references)
vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover)
vim.keymap.set('n', '<leader>lt', function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end)
vim.keymap.set('n', '<leader>mk', ':make<CR>')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-w>t', ':tabnew %<CR>')
vim.keymap.set('n', '<C-w>c', ':tabclose <CR>')
vim.keymap.set('t', '<C-n>', '<C-\\><C-n>')

-- Workspaces
-- vim.keymap.set('n', '<leader>1', '`A')
-- vim.keymap.set('n', '<leader>2', '`B')
-- vim.keymap.set('n', '<leader>3', '`C')
-- vim.keymap.set('n', '<leader>4', '`D')
-- vim.keymap.set('n', '<leader>5', '`E')
-- vim.keymap.set('n', '<leader>6', '`F')
-- vim.keymap.set('n', '<leader>7', '`G')
-- vim.keymap.set('n', '<leader>8', '`H')
-- vim.keymap.set('n', '<leader>9', '`I')
-- vim.keymap.set('n', '<leader>0', '`J')
-- vim.keymap.set('n', ';1', 'mA')
-- vim.keymap.set('n', ';2', 'mB')
-- vim.keymap.set('n', ';3', 'mC')
-- vim.keymap.set('n', ';4', 'mD')
-- vim.keymap.set('n', ';5', 'mE')
-- vim.keymap.set('n', ';6', 'mF')
-- vim.keymap.set('n', ';7', 'mG')
-- vim.keymap.set('n', ';8', 'mH')
-- vim.keymap.set('n', ';9', 'mI')
-- vim.keymap.set('n', ';0', 'mJ')
vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-w>1', ':tabn 1<CR>')
vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-w>2', ':tabn 2<CR>')
vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-w>3', ':tabn 3<CR>')
vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-w>4', ':tabn 4<CR>')
vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-w>5', ':tabn 5<CR>')
vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-w>6', ':tabn 6<CR>')
vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-w>7', ':tabn 7<CR>')
vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-w>8', ':tabn 8<CR>')
vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-w>9', ':tabn 9<CR>')
vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-w>0', ':tabn 10<CR>')

-- Remap
vim.keymap.set('n', '<C-d>', '<C-d>zz', { silent = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { silent = true })
vim.keymap.set('v', '<', '<gv', { silent = true })
vim.keymap.set('v', '>', '>gv', { silent = true })

-- neovide
if vim.g.neovide then
    vim.o.guifont = "Iosevka Nerd Font Mono:h12"
    vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-b>1', ':tabn 1<CR>')
    vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-b>2', ':tabn 2<CR>')
    vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-b>3', ':tabn 3<CR>')
    vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-b>4', ':tabn 4<CR>')
    vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-b>5', ':tabn 5<CR>')
    vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-b>6', ':tabn 6<CR>')
    vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-b>7', ':tabn 7<CR>')
    vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-b>8', ':tabn 8<CR>')
    vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-b>9', ':tabn 9<CR>')
    vim.keymap.set({ 'n', 'x', 'v', 'i' }, '<C-b>0', ':tabn 10<CR>')

    vim.keymap.set('n', '<C-b>t', ':tabnew %<CR>')
    vim.keymap.set('n', '<C-b>c', ':tabclose <CR>')
end


vim.diagnostic.config({
    virtual_text = { prefix = "●", source = "if_many", },
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = { border = "rounded", },
})

vim.lsp.enable({ 'lua_ls', 'clangd', 'omnisharp', 'hls', 'pyright', 'ts_ls', 'jdtls' })

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)
vim.g.maplocalleader = "\\"

require("lazy").setup({
    defaults = { version = '*', },
    spec = { { import = "plugins" }, },
    ui = { border = "single", },
    install = { colorscheme = { "gruvbox" } },
    checker = { notify = false, enabled = false, },
})

---Show attached LSP clients in `[name1, name2]` format.
---Long server names will be modified. For example, `lua-language-server` will be shorten to `lua-ls`
---Returns an empty string if there aren't any attached LSP clients.
---@return string
local function lsp_status()
    local attached_clients = vim.lsp.get_clients({ bufnr = 0 })
    if #attached_clients == 0 then
        return ""
    end
    local names = vim.iter(attached_clients)
        :map(function(client)
            local name = client.name:gsub("language.server", "ls")
            return name
        end)
        :totable()
    return "{ " .. table.concat(names, ", ") .. " }"
end
local function get_cur_pos_percentage()
    local cur = vim.api.nvim_win_get_cursor(0)
    local row = cur[1]
    return tostring(math.floor(row / vim.api.nvim_buf_line_count(0) * 100)) .. '%'
end
function _G.statusline()
    return table.concat({
        "%f",
        "%h%w%m%r",
        lsp_status(),
        "%=",
        " %-14(%l,%c%V%)",
        -- "%P	",
        get_cur_pos_percentage() .. '%',
        "	",
    }, "   ")
end

vim.o.statusline = "%{%v:lua._G.statusline()%}"

vim.api.nvim_create_autocmd("BufEnter", {
    group = vim.api.nvim_create_augroup("HelpReplaceWindow", { clear = true }),
    callback = function()
        if vim.bo.filetype == "help" and vim.b.already_opened == nil then
            -- remember we already opened this buffer
            vim.b.already_opened = true

            -- close the original window
            local original_win = vim.fn.win_getid(vim.fn.winnr('#'))
            local help_win = vim.api.nvim_get_current_win()
            if original_win ~= help_win then
                vim.api.nvim_win_close(original_win, false)
            end
            vim.bo.buflisted = true
        end
    end,
})

vim.api.nvim_create_autocmd('Filetype', {
    pattern = { 'c', 'cpp', 'h', 'hpp' },
    callback = function() vim.bo.commentstring = '//%s' end,
})

vim.keymap.set('n', '<C-W>:', function()
    vim.ui.input({
        prompt = '(capture) :',
        completion = 'command',
    }, function(input)
        if input == '' or input == nil then return end
        local output = vim.api.nvim_exec2(input, { output = true }).output
        local buf = vim.api.nvim_create_buf(false, true)
        vim.api.nvim_buf_set_lines(buf, 0, -1, false, vim.split(output, '\n'))
        vim.api.nvim_set_current_buf(buf)
        -- local win = vim.api.nvim_open_win(buf, true, {
        --	 height = vim.o.cmdwinheight,
        --	 split = 'below',
        --	 win = 0,
        -- })
    end)
end)

vim.api.nvim_command(':hi link markdownError Normal')

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    if client and client:supports_method 'textDocument/codeLens' then
      vim.lsp.codelens.refresh()
      vim.api.nvim_create_autocmd({ 'BufEnter', 'CursorHold', 'InsertLeave' }, {
        buffer = bufnr,
        callback = vim.lsp.codelens.refresh,
      })
    end
  end,
})
-- vim.api.nvim_create_autocmd('BufWinLeave', {
--	 command = 'mkview',
-- })
-- vim.api.nvim_create_autocmd('BufWinEnter', {
--	 command = 'silent! loadview',
-- })

function NoInterruptions()
    vim.cmd('set signcolumn=no')
    vim.cmd('set norelativenumber')
    vim.cmd('set nonumber')
    vim.cmd('set laststatus=4')
    vim.cmd('set laststatus=0')
    vim.cmd('set statusline=""')
    vim.cmd('set cmdheight=0')
end
