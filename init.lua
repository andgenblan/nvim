vim.wo.number = true
vim.wo.relativenumber = true
vim.keymap.set('n', '<A-r>', function()
  if vim.wo.relativenumber then
    vim.wo.relativenumber = false
    vim.wo.number         = true   -- keep absolute numbers
  else
    vim.wo.relativenumber = true
    vim.wo.number         = true   -- show current line as absolute 0
  end
end, { desc = "Toggle relative line numbers" })
vim.opt.wrap = false
vim.opt.whichwrap:append {
  ['<'] = true,
  ['>'] = true,
  ['['] = true,
  [']'] = true,
  h = true,
  l = true,
}

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set('t', '<A-n>', [[<C-\><C-n>]])

-- switch between windows
vim.keymap.set('n', '<A-k>', '<C-w>k')
vim.keymap.set('n', '<A-j>', '<C-w>j')
vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-l>', '<C-w>l')

vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

vim.keymap.set('n', '<leader>r', 'ciw', {})

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('i', 'jk', '<Esc>', {noremap = true, silent = true})
vim.keymap.set('v', 'jk', '<Esc>', {noremap = true, silent = true})
vim.opt.timeoutlen = 200

vim.keymap.set('i', '<A-h>', '<Left>',  {noremap = true, silent = true})
vim.keymap.set('i', '<A-j>', '<Down>',  {noremap = true, silent = true})
vim.keymap.set('i', '<A-k>', '<Up>',    {noremap = true, silent = true})
vim.keymap.set('i', '<A-l>', '<Right>', {noremap = true, silent = true})

vim.opt.ignorecase = true

vim.opt.clipboard = "unnamedplus"


vim.api.nvim_create_autocmd("FileType", {
  pattern = "rust",
  callback = function()
    vim.bo.expandtab = false
    vim.bo.tabstop = 8
    vim.bo.shiftwidth = 8
    vim.bo.softtabstop = 0
    vim.bo.indentexpr = ""
    vim.bo.cindent = true
  end,
})


require("config.lazy")


--Set line number color
vim.api.nvim_set_hl(0, "LineNr", { fg = "#00f2ff" })

vim.api.nvim_set_hl(0, 'WinSeparator',     { fg = '#00f2ff', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'WinSeparatorNC',   { fg = '#00f2ff', bg = 'NONE' })

vim.api.nvim_set_hl(0, 'StatusLine',     { fg = '#000000', bg = '#00f2ff' })
vim.api.nvim_set_hl(0, 'StatusLineNC',   { fg = '#00f2ff', bg = 'NONE' })


