
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

treesitter.setup({
  -- Lista parserów do zainstalowania
  ensure_installed = {
    "c",
    "python",
    "lua",
    "vim",
    "vimdoc",
    "query"
  },

  -- Automatycznie instaluj parsery, gdy otworzysz plik danego typu
  auto_install = true,

  -- Podświetlanie składni (główna funkcja)
  highlight = {
    enable = true,
    -- Zamiast regexowego podświetlania Vima
    additional_vim_regex_highlighting = false,
  },

  -- (opcjonalnie) Składanie kodu (folding)
  indent = {
    enable = true,
  },
})
