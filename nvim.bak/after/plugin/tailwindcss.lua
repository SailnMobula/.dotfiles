require 'lspconfig'.tailwindcss.setup {
    capabilities = Capabilities,
    -- There add every filetype you want tailwind to work on
    filetypes = {
        "css",
        "scss",
        "sass",
        "postcss",
        "html",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "svelte",
        "vue",
        "rust",
    },
    init_options = {
        -- There you can set languages to be considered as different ones by tailwind lsp I guess same as includeLanguages in VSCod
        userLanguages = {
            rust = "html",
        },
    },
    -- Here If any of files from list will exist tailwind lsp will activate.
    root_dir = require 'lspconfig'.util.root_pattern('tailwind.config.js', 'tailwind.config.ts', 'postcss.config.js',
        'postcss.config.ts', 'windi.config.ts'),
}


local prettier = require("prettier")

prettier.setup({
    bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
    filetypes = {
        "css",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "less",
        "markdown",
        "scss",
        "typescript",
        "typescriptreact",
        "yaml",
        "rust"
    },
})
