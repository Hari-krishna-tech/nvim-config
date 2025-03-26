return {
  {
   "nvim-treesitter/nvim-treesitter", 
   build = "TSUpdate",
   config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_intall = true,
      highlight = {enable = true},
      indent = {enable = true},
    })
   end 
  }
}
