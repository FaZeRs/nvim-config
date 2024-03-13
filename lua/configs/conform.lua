local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    c = { "clang_format" },
    cpp = { "clang_format" },
    cmake = { "cmake_format" },
    typescriptreact = { "prettier" },
    typescript = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
  },
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  },
}

require("conform").setup(options)