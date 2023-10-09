return {
    {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
        require("dap-go").setup(opts)
    end
    },
    {
    "rust-lang/rust.vim",
    ft = "rust"
    },
    {
    "nathom/filetype.nvim",
    lazy = false,
    opts = {
        overrides = {
        extensions = {
            go = "go",
            mod = "go"
        },
        },
    },
    },
    {
    "fatih/vim-go",
    ft="go"
    },
    {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    after = { "mason-lspconfig.nvim" },
    -- Is configured via the server_registration_override installed below!
    config = function()
        require("rust-tools").setup {
        tools = {
            inlay_hints = {
            parameter_hints_prefix = "  ",
            other_hints_prefix = "  ",
            },
        },
        }
    end,
    },
    {
    "sheerun/vim-polyglot",
    event="User AstroFile"
    },
}
