-- lua/jun/plugins/todo-comments.lua
return {
  'folke/todo-comments.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    signs = true, -- show icons in the signs column
    sign_priority = 8,

    -- keywords recognized as todo comments
    keywords = {
      FIX = {
        icon = ' ', -- icon used for the sign, and in search results
        color = 'error', -- can be a hex color, or a named color (see below)
        alt = { 'FIXME', 'BUG', 'FIXIT', 'ISSUE' },
        -- signs = false, -- configure signs for some keywords individually
      },
      TODO = { icon = ' ', color = 'info' },
      HACK = { icon = ' ', color = 'warning' },
      WARN = { icon = ' ', color = 'warning', alt = { 'WARNING', 'XXX' } },
      PERF = { icon = ' ', alt = { 'OPTIM', 'PERFORMANCE', 'OPTIMIZE' } },
      NOTE = { icon = ' ', color = 'hint', alt = { 'INFO' } },
      TEST = { icon = '⏲ ', color = 'test', alt = { 'TESTING', 'PASSED', 'FAILED' } },
    },

    gui_style = {
      fg = 'NONE', -- gui style for fg highlight group
      bg = 'BOLD', -- gui style for bg highlight group
    },

    merge_keywords = true, -- merge with defaults

    highlight = {
      multiline = true,
      multiline_pattern = '^.', -- lua pattern to match the next multiline
      multiline_context = 10,
      before = '', -- 'fg', 'bg', or ''
      keyword = 'wide', -- 'fg', 'bg', 'wide', 'wide_bg', 'wide_fg', or ''
      after = 'fg', -- 'fg', 'bg', or ''
      pattern = [[.*<(KEYWORDS)\s*:]], -- vim regex for highlighting
      comments_only = true, -- use treesitter to match comments only
      max_line_len = 400,
      exclude = {},
    },

    colors = {
      error = { 'DiagnosticError', 'ErrorMsg', '#DC2626' },
      warning = { 'DiagnosticWarn', 'WarningMsg', '#FBBF24' },
      info = { 'DiagnosticInfo', '#2563EB' },
      hint = { 'DiagnosticHint', '#10B981' },
      default = { 'Identifier', '#7C3AED' },
      test = { 'Identifier', '#FF00FF' },
    },

    search = {
      command = 'rg',
      args = {
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
      },
      -- don't replace (KEYWORDS)
      pattern = [[\b(KEYWORDS):]],
      -- alternative:
      -- pattern = [[\b(KEYWORDS)\b]],
    },
  },
}
