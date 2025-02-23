return {

  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',
    opts = { 
      ensure_installed = { "c", "lua", "css", "html" },     -- val av språk 
      highlight = { enable = true },
      indent = { enable = true }, },
  }
}

