return { -- https://github.com/windwp/nvim-ts-autotag
  'windwp/nvim-ts-autotag',
  event = 'VimEnter',
  config = function()
    local autotag = require 'nvim-ts-autotag'
    autotag.setup {
      opts = {
        -- Defaults
        enable_close = true, -- Auto close tags
        enable_rename = true, -- Auto rename pairs of tags
        enable_close_on_slash = false, -- Auto close on trailing </
      },
    }
  end,
}
