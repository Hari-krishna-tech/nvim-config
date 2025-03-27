
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave" }, {
  pattern = "*",
  command = "set relativenumber",
})

vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter" }, {
  pattern = "*",
  command = "set number",
})


-- Function to copy selected text to the system clipboard using pbcopy
function CopyToSystemClipboard()
  local old_reg = vim.fn.getreg('"')
  local old_regtype = vim.fn.getregtype('"')
  
  -- Yank the selected text into the unnamed register
  vim.cmd('normal! `<v`>y')
  
  -- Get the content of the unnamed register
  local selection = vim.fn.getreg('"')
  
  -- Use pbcopy to copy to system clipboard
  vim.fn.system('pbcopy', selection)
  
  -- Restore the unnamed register
  vim.fn.setreg('"', old_reg, old_regtype)
  
  -- Provide feedback
  vim.notify("Copied to system clipboard", vim.log.levels.INFO)
end

-- Map <leader>y in visual mode to copy to system clipboard
vim.keymap.set('v', '<leader>y', ':lua CopyToSystemClipboard()<CR>', { noremap = true, silent = true, desc = "Copy to system clipboard" })

-- Ensure 'y' in visual mode works normally (copies to Neovim's internal registers)
-- This is the default behavior, but we're making it explicit
vim.keymap.set('v', 'y', 'y', { noremap = true, desc = "Copy to Neovim buffer" })
