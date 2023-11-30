local keymapping = require("../keymapping")
local map = keymapping.map
local opts = keymapping.opts


--基于comment插件注释 see :h coment.config 
map('n','<C-/>','<Plug>(comment_toggle_linewise_current)',opt)
map('n','<C-S-/>','<Plug>(comment_toggle_blockwise_current)',opts)
map('v','<C-/>','<Plug>(comment_toggle_linewise_visual)',opts)
map('v','<C-S-/>','<Plug>(comment_toggle_blockwise_visual)',opts)
return {
    'numToStr/Comment.nvim',
    -- opts = {
    --   toggler = { line = 'gqa', block = 'andc' },
    --   opleader = { line = 'anda', block = 'andg' },
    -- },
    config = function()
        require('Comment').setup()
        local ft = require('Comment.ft')
        ft({'yaml'}, '#%s')
        ft({'javascript','json'}, {'//%s', '/*%s*/'})
        ft({'go', 'rust'}, ft.get('c'))
        ft({'toml', 'graphql'}, '#%s')
    end,
}

