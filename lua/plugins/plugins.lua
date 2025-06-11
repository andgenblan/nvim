return {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

    {
        "samharju/synthweave.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000,
        config = function()
            -- vim.cmd.colorscheme("synthweave")
            -- transparent version
            -- vim.cmd.colorscheme("synthweave-transparent")
        end
    },
    
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        lazy = false, -- neo-tree will lazily load itself
        ---@module "neo-tree"
        ---@type neotree.Config?
        opts = {
            -- fill any relevant options here
        },
    },
    
    {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"},

    {
        'numToStr/Comment.nvim',
        opts = {
	    -- add any options here
        }
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
	---@type ibl.config
        opts = {},
    },
	
    {
      "ActionScripted/tetris.nvim",
      cmd = { "Tetris" },
      keys = { { "<leader>T", "<cmd>Tetris<cr>", desc = "Tetris" } },
      opts = {
        -- your awesome configuration here
        mappings = {
          e = "quit",
          k = "rotate",
          j = "down",
        },
      },
    },

 --    {
	-- "https://github.com/alec-gibson/nvim-tetris",
 --    },
}
