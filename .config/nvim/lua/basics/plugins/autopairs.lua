return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',

  -- basically the only functionality i want is entering braces
  config = function()
    local npairs = require 'nvim-autopairs'
    -- Default setup
    npairs.setup {
      check_ts = true, -- Optional: enable Treesitter integration
    }
    -- Remove specific pairs
    npairs.remove_rule '('
    npairs.remove_rule '['
  end,
}
