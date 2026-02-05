-- lua/jun/plugins/mini.lua
return {
  'echasnovski/mini.nvim',
  config = function()
    require('mini.ai').setup { n_lines = 500 }
    require('mini.surround').setup()

    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = vim.g.have_nerd_font }
    statusline.section_location = function()
      return '%2l:%-2v'
    end

    local animate = require 'mini.animate'
    animate.setup {
      cursor = { enable = false },
      scroll = { enable = true },
      resize = { enable = true },
      open = { enable = true },
      close = { enable = true },
    }
  end,
}
