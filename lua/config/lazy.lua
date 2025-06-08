-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

--require("catppuccin").setup()
--vim.cmd.colorscheme "catppuccin"
--vim.cmd.colorscheme "tokyonight-night"
vim.cmd.colorscheme "synthweave-transparent"
-- vim.cmd.colorscheme "synthweave"

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>l', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {});

require('neo-tree').setup {
	filesystem = {	
		filtered_items = {
			visible = true,
			hide_dotfiles = false,
			hide_gitignored = false,
		},
	}
}

vim.keymap.set('n', '<leader>f', ':Neotree focus<CR>', {})

local config = require("nvim-treesitter.configs")
config.setup({
	ensure_installed = "all",
	highlight = { enable = true },
	indent = { enable = true },
})

require('Comment').setup({
	toggler = {
		line = '<leader>c',
		block = '<leader>b',
	},
	opleader = {
		line = '<leader>c',
		block = '<leader>b',
	},
})


local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}
local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    -- vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    -- vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
    -- vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
    -- vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
    -- vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
    -- vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    -- vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })

    vim.api.nvim_set_hl(0, "Selected", {fg = "#03A9F4"})

    vim.api.nvim_set_hl(0, "Default", {fg = "#7D23A2"})
end)

--vim.g.rainbow_delimiters = { highlight = highlight }
--require("ibl").setup { indent = { highlight = "Default" }, scope = { highlight = highlight } }
require("ibl").setup { indent = { highlight = "Default" }, scope = { highlight = "Selected" } }

--hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
