return {
  colorscheme = 'modus_vivendi',
  background = 'dark',
  on_load = function()
    require('modus-themes').setup {
      variant = 'default',
    }
  end,
}
