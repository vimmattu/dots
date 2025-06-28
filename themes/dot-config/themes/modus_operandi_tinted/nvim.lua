return {
  colorscheme = 'modus_operandi',
  background = 'light',
  on_load = function()
    require('modus-themes').setup {
      variant = 'tinted',
    }
  end,
}
