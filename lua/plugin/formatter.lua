-- Telescope find_files theme=dropdown
local keymapping = require("../keymapping")
local map = keymapping.map
local opts = keymapping.opts

-- 格式化
map('n','<leader>fm',':Format<CR>',opts)
map('n','<leader>Fm',':FormatWrite<CR>',opts)
map('v','<leader>fm',':<C-U>Format<CR>',opts)
map('v','<leader>Fm',':<C-U>FormatWrite<CR>',opts)

local formatter = {
    'mhartington/formatter.nvim',
    config = function()
        local file_type = {}

        -- 使用prettier格式化,可用类型参考
        local ft_names = {
            {"javascript","prettier"},      
            {"javascriptreact","prettier"},
            {"typescript","prettier"},
            {"typescriptreact","prettier"},
            {"json","prettier"},
            -- {"lua","luafmt"},
        }
        for _, name_pattern in ipairs(ft_names) do
            local name = name_pattern[1]
            local pattern = name_pattern[2]

                if pattern == "prettier" then
                file_type[name] = {
                    -- 对应各自目录下的prettier
                    require("formatter.filetypes." .. name).prettier
                }
            elseif pattern == "luafmt" then
                file_type[name] = {
                    -- 对应各自目录下的prettier
                    require("formatter.filetypes." .. name).luafmt
                }
            else
                file_type["*"] = {
                    require("formatter.filetypes.any").remove_trailing_whitespace
                }
            end
        end
        -- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
        require("formatter").setup ({
            -- All formatter configurations are opt-in
            filetype = file_type
        })
    end
}

return formatter
