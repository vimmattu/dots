-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Tabs
vim.keymap.set("n", "<C-M-n>", "<cmd>tabnew<CR>")
vim.keymap.set("n", "<C-M-x>", "<cmd>tabclose<CR>")
vim.keymap.set("n", "<C-M-l>", "<cmd>tabnext<CR>")
vim.keymap.set("n", "<C-M-h>", "<cmd>tabprevious<CR>")
vim.keymap.set("n", "<C-M-f>", function()
  local tabnum = tonumber(vim.fn.input("Tab number: "))
  if tabnum then
    vim.cmd("tabnext " .. tabnum)
  end
end)

vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open oil" })

vim.keymap.set("n", "gtd", function()
  require("telescope.builtin").lsp_definitions({ jump_type = "tab" })
end, { desc = "stuff" })
