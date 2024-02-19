require("conform").setup {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { { "prettier" } },
    -- Conform will run multiple formatters sequentially
    python = { "autopep8", "isort", "black" },
  },
}
