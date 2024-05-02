return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  event = 'VimEnter',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    -- REQUIRED

    require('which-key').register {
      ['<leader>l'] = { name = 'Harpoon [L]ist', _ = 'which_key_ignore' },
    }

    vim.keymap.set('n', '<leader>la', function()
      harpoon:list():add()
    end, { desc = '[A]dd to Harpoon' })

    vim.keymap.set('n', '<leader>lo', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = '[O]pen Harpoon list' })

    vim.keymap.set('n', '<leader>l1', function()
      harpoon:list():select(1)
    end, { desc = 'Open [1]st item' })

    vim.keymap.set('n', '<leader>l2', function()
      harpoon:list():select(2)
    end, { desc = 'Open [2]nd item' })

    vim.keymap.set('n', '<leader>l3', function()
      harpoon:list():select(3)
    end, { desc = 'Open [3]rd item' })

    vim.keymap.set('n', '<leader>l4', function()
      harpoon:list():select(4)
    end, { desc = 'Open [4]th item' })
  end,
}
