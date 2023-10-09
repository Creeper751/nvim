return {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require("null-ls")
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
    config.on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({
            group = augroup,
            buffer = bufnr,
        })
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
            vim.lsp.buf.format({ bufnr = bufnr })
            end
        })
        end
    end

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      null_ls.builtins.formatting.gofmt,
      null_ls.builtins.formatting.goimports_reviser,
      null_ls.builtins.formatting.golines,
      null_ls.builtins.formatting.black,
      null_ls.builtins.diagnostics.mypy,
      null_ls.builtins.diagnostics.ruff,
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
    }
    return config -- return final config table
  end,
}
