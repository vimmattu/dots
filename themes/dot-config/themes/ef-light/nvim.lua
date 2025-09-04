return {
  colorscheme = 'ef-light',
  background = 'light',
  on_load = function()
    require('modus-themes').setup {
      variant = 'default',
    }
  end,
}
