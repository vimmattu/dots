function LoadDynamicTheme()
  package.loaded["custom.theme"] = nil
  local theme = require("custom.theme")
  vim.cmd("colorscheme " .. theme.colorscheme)
  vim.cmd("set bg=" .. theme.background)
  if theme.on_load then
    theme.on_load()
  end
  vim.notify("Theme changed to " .. theme.colorscheme .. " with bg=" .. theme.background)
end
LoadDynamicTheme()
