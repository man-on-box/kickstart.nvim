return { -- Add closing brackets, etc
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/nvim-cmp',
  },
  config = function()
    require('nvim-autopairs').setup {
      check_ts = true, -- enable treesitter
      ts_config = {
        lua = { 'string' }, -- don't add pairs in lua string treesitter nodes
        javascript = { 'template_string' }, -- don't add pairs in js template_string treesitter nodes
        java = false, -- don't check treesitter on java
      },
    }
  end,
}
