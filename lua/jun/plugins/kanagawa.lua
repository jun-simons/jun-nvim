-- lua/jun/plugins/kanagawa.lua
return {
  'rebelot/kanagawa.nvim',
  priority = 1000,
  lazy = false,
  config = function()
    require('kanagawa').setup {
      compile = false,
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,
      dimInactive = false,
      terminalColors = true,
      colors = {
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
      overrides = function(_colors)
        return {}
      end,
      theme = 'wave',
      background = {
        dark = 'wave',
        light = 'lotus',
      },
    }

    vim.cmd.colorscheme 'kanagawa'
  end,
}
