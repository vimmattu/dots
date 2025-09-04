return {
  colorscheme = 'ef-summer',
  background = 'light',
  on_load = function()
    require('modus-themes').setup {
      variant = 'default',
    }
  end,
}
