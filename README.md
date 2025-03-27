# Installation

- brew install nvim (if brew is already installed, otherwise install brew first)

# Config 

- '~/.configs/nvim' 
- store all the config files in the above directory (nvim on load will look for config from her)
- After loading it will search for init.lua file 
- You can add your custom plugin specs under lua/plugins/. All files there will be automatically loaded by lazy.nvim
- in init.lua we just configure the lazyvim, then we create a folder called lua there we add plugins folder to load all our plugins 
- Also we add our vim-settings in a file called vim-options.lua 
- we set our leader key here (Space " ")


# Plugins 

### inside plugins we add all our plugins in a separate file

- Those will return a lua table with all the configuration 

## Catppuccin.lua

- Catppuccin color theme (nothing more we need to do there)

## lualine.lua

- this plugins remove the default info line in the bottom of vim with something colorr full also show your git info 

## neo-tree

- It's add the file tree of our directory 
- <C-n> ctrl-n to toggle it on or off (in normal mode)
- a -> to add a file or directory(starts with /)
- d -> to delete a file or director 
- r -> rename a file or director 

## telescope.lua 

- Used to fuzzy find the files or find file based on name
- Grep find or find file based on text inside it 

- <C-p> to fuzzy find 
- <leader>fg to grep the directory 


## treesitter.lua 

- Used to storing your file in a tree structure
- which at the end helps your highlight, indent, etc

## lsp-config.lua

- Used to install a language server, so your editor can give  you errors, highlight mistakes in your code  
- K -> when in normal mode , just howver over and hit K to get info
- gd -> go to the definition 
- <leader>ca -> for code actions -> to fix any syntax error 
