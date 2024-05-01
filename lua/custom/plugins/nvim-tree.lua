return { -- View file tree of project
  'nvim-tree/nvim-tree.lua',
  event = 'VimEnter',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('nvim-tree').setup { view = { side = 'right', width = 60 }, renderer = { highlight_opened_files = 'name' } }

    vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeFindFileToggle<CR>', { desc = 'Nvimtree Toggle window' })
    vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeFocus<CR>', { desc = 'Nvimtree Focus window' })
  end,
}
