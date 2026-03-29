require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = {
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false,    -- Force no italic
    no_bold = false,      -- Force no bold
    no_underline = false, -- Force no underline
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        notify = true,
        dashboard = true,
        which_key = true,
        nvimtree = true,

        gitsigns = true,
        gitgutter = true,
        telescope = true,
        cmp = {
            enabled = true,
            border = {
                completion = true,
                documentation = true,
            }
        },
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = { "italic" },
                hints = { "italic" },
                warnings = { "italic" },
                information = { "italic" },
            },
            underlines = {
                errors = { "underline" },
                hints = { "underline" },
                warnings = { "underline" },
                information = { "underline" },
            },
        },
    },
})
-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
-- local cp = require("catppuccin.palettes").get_palette "mocha"
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = cp.surface0 })
local colors = require("catppuccin.palettes").get_palette()
require("catppuccin.lib.highlighter").syntax {
	FloatBorder = { fg = colors.overlay2, bg = colors.mantle },
}
