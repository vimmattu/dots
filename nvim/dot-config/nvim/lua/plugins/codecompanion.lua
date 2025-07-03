return {
  "olimorris/codecompanion.nvim",
  opts = {},
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("codecompanion").setup({
      adapters = {
        ollama = function()
          return require("codecompanion.adapters").extend("ollama", {
            env = {
              url = os.getenv("OLLAMA_API_URL") or "http://localhost:11434",
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = "ollama",
          model = "qwen2.5-coder:14b",
        },
        inline = {
          adapter = "ollama",
          model = "qwen2.5-coder:14b",
        },
      },
    })
  end,
}
