# Installation

- brew install nvim (if brew is already installed, otherwise install brew first)

# Config 

- '~/.configs/nvim' 
- store all the config files in the above directory (nvim on load will look for config from here)
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
- in order for the icons to be visible, we need to install nerd fonts in the terminal 

- cmd for install installion 

Step 1: Download a Nerd Font

    - Visit the official Nerd Fonts website: https://www.nerdfonts.com/
    - Click on "Download" in the navigation menu
    - Choose a font you like (popular choices include JetBrainsMono, Hack, FiraCode, or Meslo)
    - Alternatively, use the GitHub repository: https://github.com/ryanoasis/nerd-fonts/releases


## telescope.lua 

- Used to fuzzy find the files or find file based on name
- Grep find or find file based on text inside it 

- <C-p> to fuzzy find 
- <leader>fg to grep the directory 


## treesitter.lua 

- Used to storing your file in a tree structure
- which at the end helps your highlight, indent, etc

## lsp-config.lua

- Use Mason to intall lsp
- lspconfig to configure with nvim
- Used to install a language server, so your editor can give  you errors, highlight mistakes in your code  
- K -> when in normal mode , just howver over and hit K to get info
- gd -> go to the definition 
- <leader>ca -> for code actions -> to fix any syntax error 

## none-ls.lua

## <leader>gf - format
- used to convert formatting commandline tools like eslint, stylua into a lsp, that a format and make recommendation to us 
- We use mason to install the formatter with :Mason command and searching for it 
- then add it to sources in none-ls setup
- <leader>gf - format 



## Code Completion 

### nvim-cmp ( A completion engine for neovim written in lua )

- nvim-cmp get's it completions snippets from luasnip
- it gets the whole snippets from cmp-luasnip
- it get all the snippets from the friendly snippets 
- In lsp-config we install completion lsp cmp, uhich uses language server to provide snippet 


## Debugger 


- installed dap -> debbuginng adapter 
- <leader>dt -> toggle the breakpoint
- <leader>dc -> continue to next 

- currently disabled , becuase i don't need it now 

## Tmux 

- Terminalogy 
    - session - when you start tmux in your terminal it creates a new session
    - window - inside a session u can create a window with <leader>c, move between them with <leader>n, or <leader>n (n is the number of the window
    - pane - inside a window you can create multiple pane with <leader>% (horizontal) <leader>" for vertical split
    - <leader>arrowKey to move around the pane
    - rebind made so u can also use <leader>h to move left pane
    - <leader>j to move down
    - <leader>k to move up
    - <leader>l to move right
    - just like vim

- Commands
    - Leader is by deafult C-b, but is not ergonomical so it is changed to C-s with .tmux.conf file in the root director 
    unbind r
    bind r source-file ~/.tmux.conf
    - source the config after entering terminal with tmux source ~/.tmux.conf
    - reload config with <leader>r
    -  
    
## Tmux (Terminal multiplexer)

- Allows you to have multiple sudo terminal login tied to 1 terminal sessions
- super power comes in when you can detach from 1 terminal session and create a other session (even then you can restore the previous session)
- install tmux with brew install tmux 
- to enter tmux session just type tmux 
- Leader Ctrl + b (default)
- you will be by default in window 0
- to create a new window <leader>c 
- we can see how many windows there are in with the entry in the bottom
- to go next window <leader>
- go to windows by number <leader>n -n -> is the nubmer you want to go
- to split the current window in horizontal : <leader>%
- to split the current window in the vertical : <leader>"
- to split jump through the panes in the window: <leader>arrow keys 
- rename a window
    - <leader>: -> takes you to command mode 
    - type rename-window new_name 

## session management 

- if you want to detach from the current session <leader>d -> put you can in the normal terminal 
- tmux ls -> to see all the sessions
- reattach to the previous session 
- tmux attach

- Other session 
    - detach from current session 
    - type tmux to create a new one 

    - if you want to go to other session, type <leader>s 
    - to list the sessions 
    - and you can go between them 
    - inorder to rename the session just go to command mode <leader>:
    - rename-session new-name
    - now <leader>b will show list of sessions 











