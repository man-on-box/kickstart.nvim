return { -- Help with auto-completion for Copilot
  'zbirenbaum/copilot-cmp',
  config = function()
    require('copilot_cmp').setup()
  end,
}
