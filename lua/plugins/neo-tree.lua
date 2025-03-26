return  {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
  dependencies = {

    "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim"
  },
  config = function()

  vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', {})
  end 
}
