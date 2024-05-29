--basic config 
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"




--remaps

vim.g.mapleader = " " 

--neo tree remaps

vim.keymap.set("n","<C-b>",":Neotree filesystem reveal left<CR>",{})
vim.keymap.set("n","<leader>b",":Neotree close<CR>")

--telescope remaps are available in its file
--
--lsp remaps
--this will open docs provided by the lsp
--vim.keymap.set("n","D",vim.lsp.buf.hover,{})
vim.keymap.set("n","gd",vim.lsp.buf.definition,{})
vim.keymap.set({"n",'v'},"<leader>ca",vim.lsp.buf.code_action,{})

