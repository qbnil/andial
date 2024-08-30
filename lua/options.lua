require "nvchad.options"

vim.o.laststatus = 3
vim.o.showmode = false
vim.o.cmdheight = 1
vim.o.clipboard = "unnamedplus"
vim.o.cursorline = true
vim.o.cursorlineopt = "number"
vim.o.lazyredraw = false
vim.o.hidden = true
vim.o.backup = false

vim.opt.shortmess:append "Ac" -- Disable asking
-- vim.o.fileencoding = 'utf-8'
-- Indenting
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.fillchars = { diff = "/" }
--vim.opt.softtabstop = 4
--vim.opt.smartindent = true
--vim.cmd("autocmd BufEnter * setlocal noautoindent")

-- Disable folding
vim.opt.foldenable = false
vim.opt.foldlevel = 0
vim.opt.pumblend = 0
vim.o.mouse = 'a'
-- vim.o.pumheight = 8

vim.opt.guicursor = ""
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.termguicolors = true
vim.opt.swapfile = false
vim.o.ignorecase = true
vim.o.smartcase = true

-- Numbers
vim.o.number = true
vim.o.relativenumber = true
vim.o.numberwidth = 2
vim.o.ruler = false

-- disable nvim intro
-- vim.opt.shortmess:append("sI")

vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.opt.scrolloff = 8
vim.o.helpheight = 10
-- vim.opt.isfname:append("@-@")
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.timeoutlen = 400
vim.o.undofile = true
-- vim.opt.fileformat = 'unix'

-- interval for writing swap file to disk, also used by gitsigns
vim.o.updatetime = 100

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
vim.opt.whichwrap:append("<>[]hl")
-- vim.opt.fixendofline = false

local global = {
  mapleader = " ",
  netrw_winsize = 15,
  mkdp_auto_close = false, -- Don't Exit Preview When Switching Buffers
  --snipmate_snippets_path = vim.fn.stdpath "config" .. "/snippets/snipmate", -- path to snipmate snippets
  startup_message = false, -- Show startup message
  random_header = false, -- Show random header
  skip_ts_context_commentstring_module = true, -- disable treesitter context commentstring
  -- toggle_cmp = true, -- enable nvim-cmp
  ["loaded_node_provider"] = 0, -- disable node provider
  ["loaded_python3_provider"] = 0, -- disable python3 provider
  ["loaded_perl_provider"] = 0, -- disable perl provider
  ["loaded_ruby_provider"] = 0, -- disable ruby provider
  -- toggle_theme_icon = "   ",
}

for name, value in pairs(global) do
  vim.g[name] = value
end
-- Cmp
-- vim.opt.completeopt = { "menu", "menuone", "noselect" }
-- add binaries installed by mason.nvim to path
vim.env.PATH = table.concat({ vim.fn.stdpath "data", "mason", "bin" }, '/') .. ':' .. vim.env.PATH
