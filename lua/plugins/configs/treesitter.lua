require("nvim-treesitter.configs").setup {
  ensure_installed = { "c", "java", "python", "lua", "vim", "vimdoc", "tsx", "html", "css", "typescript", "javascript",  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = { enable = true },
}
