local opts = {
    ensure_installed = {
        "python",
        "matlab",
        "bash",
        "html",
        "javascript",
        "lua",
        "luadoc",
        "cpp",
        "css",
        "json",
        "toml",
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = { enable = true },
}

require("nvim-treesitter.configs").setup(opts)
