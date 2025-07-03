-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Bg color from terminal
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    local highlights = {
      "Normal",
      "LineNr",
      "Folded",
      "NonText",
      "SpecialKey",
      "VertSplit",
      "SignColumn",
      "EndOfBuffer",
      "TablineFill", -- this is specific to how I like my tabline to look like
    }
    for _, name in pairs(highlights) do
      vim.cmd.highlight(name .. " guibg=none ctermbg=none")
    end
  end,
})
