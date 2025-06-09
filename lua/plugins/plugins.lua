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

	-- {
	-- 	"hrsh7th/cmp-nvim-lsp",
	-- },
	--
	-- {
	-- 	"L3MON4D3/LuaSnip",
	-- 	dependencies = {
	-- 		"saadparwaiz1/cmp_luasnip",
	-- 		"rafamadriz/friendly-snippets",
	-- 	},
	-- },
	--
	--
	-- {
	-- 	"hrsh7th/nvim-cmp",
	-- 	config = function()
	-- 	  local cmp = require'cmp'
	-- 	  
	-- 	  require("luasnip.loaders.from_vscode").lazy_load()
	-- 	  
	-- 	  cmp.setup({
	-- 	    snippet = {
	-- 	      -- REQUIRED - you must specify a snippet engine
	-- 	      expand = function(args)
	-- 		require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
	-- 	      end,
	-- 	    },
	-- 	    window = {
	-- 	      completion = cmp.config.window.bordered(),
	-- 	      documentation = cmp.config.window.bordered(),
	-- 	    },
	-- 	    mapping = cmp.mapping.preset.insert({
	-- 	      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
	-- 	      ['<C-f>'] = cmp.mapping.scroll_docs(4),
	-- 	      ['<C-Space>'] = cmp.mapping.complete(),
	-- 	      ['<C-e>'] = cmp.mapping.abort(),
	-- 	      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	-- 	    }),
	-- 	    sources = cmp.config.sources({
	-- 	      { name = 'nvim_lsp' },
	-- 	      { name = 'luasnip' }, -- For luasnip users.
	-- 	    }, {
	-- 	      { name = 'buffer' },
	-- 	    })
	-- 	  })	
	-- 	end,
	-- },

}
