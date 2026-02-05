-- lua/jun/plugins/image.lua
return {
  -- image rendering backend plugin
  '3rd/image.nvim',
  opts = {
    backend = 'kitty',
    integrations = {}, -- let Molten handle the markdown / notebook side
    max_width = 100,
    max_height = 12,
    max_height_window_percentage = math.huge,
    max_width_window_percentage = math.huge,
    window_overlap_clear_enabled = true,
    window_overlap_clear_ft_ignore = { 'cmp_menu', 'cmp_docs', '' },
  },
}
