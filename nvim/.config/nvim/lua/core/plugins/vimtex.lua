return {
    "lervag/vimtex",
    ft = { "tex", "plaintex", "bib" },
    -- lazy = false, -- lazy-loading will disable inverse search
    config = function()
        vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
        vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
    end,
}
