return{
    'rose-pine/neovim', name = 'rose-pine',
    priority = 1000,
    lazy = false,
    config = function()
        local rosepine = require('rose-pine') -- require('rose-pine').setup({
        rosepine.setup({
                --- @usage 'auto'|'main'|'moon'|'dawn'
                variant = 'main',
                --- @usage 'main'|'moon'|'dawn'
                dark_variant = 'main',
                bold_vert_split = false,
                dim_nc_background = false,
                disable_background = true,
                disable_float_background = false,
                disable_italics = false,

                --- @usage string hex value or named color from rosepinetheme.com/palette
                groups = {
                    background = 'base',
                    background_nc = '_experimental_nc',
                    panel = 'surface',
                    panel_nc = 'base',
                    border = 'highlight_med',
                    comment = 'muted',
                    link = 'iris',
                    punctuation = 'subtle',

                    error = 'love',
                    hint = 'iris',
                    info = 'foam',
                    warn = 'gold',

                    headings = 'iris',
                    -- or set all headings at once
                    -- headings = 'subtle'
                },

                -- Change specific vim highlight groups
                -- https://github.com/rose-pine/neovim/wiki/Recipes
                highlight_groups = {
                    ColorColumn = { bg = 'base', blend = 10 },

                    -- Blend colours against the "base" background
                    CursorLine = { bg = 'subtle', blend = 10 },

                    StatusLine = { fg = 'love', bg = 'love', blend = 10 },
		            StatusLineNC = { fg = 'love', bg = 'love' },
                    
                    -- Make Telescope transparent
                    TelescopeBorder = { fg = "pine", bg = "none" },
                    TelescopeNormal = { fg = "highlight_high", bg = "none" },
                    TelescopePromptNormal = { fg = 'rose', bg = "none" },
                    TelescopeResultsNormal = { fg = "subtle", bg = "none" },
                    TelescopeSelection = { fg = "foam", bg = "none" },
                    TelescopeSelectionCaret = { fg = "pine", bg = "pine" },

                    -- By default each group adds to the existing config.
                    -- If you only want to set what is written in this config exactly,
                    -- you can set the inherit option:
                    Search = { fg = 'highlight_high', bg = 'gold', inherit = false },
                }
        })
    vim.cmd([[colorscheme rose-pine]])
    end,
}
