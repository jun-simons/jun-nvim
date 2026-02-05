-- lua/jun/plugins/molten.lua
return {
  'benlubas/molten-nvim',
  dependencies = {
    '3rd/image.nvim',
  },
  -- Remote plugin: needs this after install/update
  build = ':UpdateRemotePlugins',

  -- `init` runs early (before the plugin is loaded),
  -- which is what Molten expects for these globals.
  init = function()
    -- tell Molten to use image.nvim for rich outputs
    vim.g.molten_image_provider = 'image.nvim'

    -- how tall output windows are allowed to be
    vim.g.molten_output_win_max_height = 20
  end,

  config = function()
    -- Optional: some handy keymaps

    -- Visual mode: evaluate selection in current kernel
    vim.keymap.set('v', '<leader>mr', ':<C-u>MoltenEvaluateVisual<CR>', {
      desc = 'Molten: evaluate selection',
    })

    -- Normal mode: re-evaluate current cell / block (depending on how you use Molten)
    vim.keymap.set('n', '<leader>ml', ':MoltenEvaluateLine<CR>', {
      desc = 'Molten: evaluate line',
    })

    -- Show/hide output window
    vim.keymap.set('n', '<leader>mo', ':MoltenShowOutput<CR>', {
      desc = 'Molten: show output',
    })

    -- Restart kernel (Python / others)
    vim.keymap.set('n', '<leader>mk', ':MoltenRestart<CR>', {
      desc = 'Molten: restart kernel',
    })
  end,
}
