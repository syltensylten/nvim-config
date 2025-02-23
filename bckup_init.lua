--vim.g.loaded_netrw = 1        -- för vim-tree
--vim.g.loaded_netrwPlugin = 1  -- 

vim.cmd('set number')
vim.cmd('set expandtab')      -- space som tab
vim.cmd('set tabstop=2')      -- 2 platser per tab
vim.cmd('set softtabstop=2')
vim.cmd('set shiftwidth=2')
vim.g.mapleader = ' '         -- 'ledare' blir 'space'


local lazypath = vim.fn.stdpath('data') .. "/lazy/lazy.nvim"    -- init för lazy.nvim
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

local plugins	= {             -- plugins

  { 'savq/melange-nvim'
    },

  { 'nvim-telescope/telescope.nvim', tag = '0.1.8',
     dependencies = { 'nvim-lua/plenary.nvim' }
    },

  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'
    },

  { 'nvim-tree/nvim-web-devicons'
    },

--  { 'nvim-tree/nvim-tree.lua', version = "*", lazy = false  
--    },

  { 'folke/noice.nvim', event = 'VeryLazy',
    dependencies = {  'muniftanjim/nui.nvim' } 
    },
  
  { 'romgrk/barbar.nvim', -- tabs
    },

  { 'folke/snacks.nvim', priority = 1000, lazy = false,
   opts = {
      animate = { enabled = true, },
      --bigfile = { enabled = false, },
      --bufdelete = { enabled = false, },
      dashboard = { },
      --dim = { enabled = false, },
      explorer = {  enabled = true },
      --git = { enabled = false, },
      --gitbrowse = { enabled = false, },
      --image = { enabled = false, },
      indent = { enabled = true, },
      --input = { enabled = false, },
      --layout = { enabled = false, },
      --lazygit = { enabled = false, },
      --notifier = { enabled = false, },
      --notify = { enabled = false, },
      picker = { enabled = true, },
      --profiler = { enabled = false, },
      --quickfile = { enabled = false, },
      --rename = { enabled = false, },
      --scope = { enabled = false, },
      --scratch = { enabled = false, },
      scroll = { enabled = true, },
      --statuscolumn = { enabled = false, },
      --terminal = { enabled = false, },
      --toggle = { enabled = false, },
      --util = { enabled = false, },
      --win = { enabled = false, },
      --words = { enabled = false, },
      --zen = { enabled = false, },

    	}, 
     },
  }

                            -- slut plugins

local opts = {              -- options
  {

},



require('lazy').setup(plugins, opts)
  



vim.cmd('colorscheme melange')          -- temaval

--vim.opt.termguicolors = true            --  opt för nvim-tree
--require('nvim-tree').setup()            --  nvim-tree init

 

local builtin = require('telescope.builtin')              

local config = require(nvim-treesitter.configs)         -- tree-sitter init

  config.setup({                                          -- tree-sitter configs
    ensure_installed = { "c", "lua", "css", "html" },     -- val av språk 
    highlight = { enable = true },
    indent = { enable = true },  
  })


-- snacks config
  --
    --



-- 'space' + 'f' för att söka filer med telescope
vim.keymap.set('n', '<leader>f', builtin.find_files, {}) 
