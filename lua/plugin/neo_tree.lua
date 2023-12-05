local keymapping = require("../keymapping")
local map = keymapping.map
local opts = keymapping.opts


--基于comment插件注释 see :h coment.config
map('n','<A-1>',':<C-U>Neotree toggle<CR>',opts)
map('v','<A-1>',':<C-U>Neotree toggle<CR>',opts)
map('i','<A-1>',':<C-U>Neotree toggle<CR>',opts)
map('n','<A-a>',':lua jump_to_file()<CR>',opts)


function jump_to_file()
local current_file_path = vim.fn.expand('%:p')
  if string.find(current_file_path,'neo') and string.find(current_file_path,'tree') then
      -- neo-tree 目录按A-a不管用
  else
    vim.cmd('Neotree focus ' .. current_file_path)
  end
end

return {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
      }
}
