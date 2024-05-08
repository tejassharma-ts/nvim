return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            -- Bubbles config for lualine
            -- Author: lokesh-krishna
            -- MIT license, see LICENSE for more details.

            -- stylua: ignore
            local colors = {
                blue   = '#80a0ff',
                cyan   = '#79dac8',
                black  = '#080808',
                white  = '#c6c6c6',
                red    = '#ff5189',
                violet = '#d183e8',
                grey   = '#000',
            }

            local bubbles_theme = {
                normal = {
                    a = { fg = "#191724", bg = "#9ccfd8", gui = "bold" },
                    b = { fg = "#e0def4", bg = "#1f1d2e" },
                    c = { fg = colors.white },
                },
                insert = {
                    a = { fg = "#191724", bg = "#9ccfd8", gui = "bold" },
                },
                visual = {
                    a = { fg = "#191724", bg = "#9ccfd8", gui = "bold" },
                },
                replace = {
                    a = { fg = "#191724", bg = "#9ccfd8", gui = "bold" },
                },

                inactive = {
                    a = { fg = "#e0def4", bg = "#31748f" },
                    b = { fg = "#e0def4", bg = "#1f1d2e" },
                    c = { fg = colors.white },
                },
            }

            require('lualine').setup {
                options = {
                    theme = bubbles_theme,
                    component_separators = '',
                    section_separators = { left = '', right = ' ' },
                },
                sections = {
                    lualine_a = { {
                        'mode',
                        icons_enabled = true,
                        icon = "",
                        separator = { left = ' ', right="" },
                        right_padding = 0,
                        bold = "true",
                    } },
                    lualine_b = {},
                    lualine_c = {
                        '%=', --[[ add your center compoentnts here in place of this comment ]]
                    },
                    lualine_x = {},
                    lualine_y = {},
                    lualine_z = {
                        { 'progress', separator = { right = '', left = ' ' }, left_padding = 0 },
                    },
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = {},
                    lualine_x = {},
                    lualine_y = {},
                    lualine_z = {},
                },
                tabline = {},
                extensions = {},
            }
        end
    }
}
