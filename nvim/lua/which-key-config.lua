local wk = require("which-key")
local mappings = {
  q = {":q<cr>", "Quit"},
  Q = {":wq<cr>", "Save and Quit"},
  w = {":w<cr>", "Save"},
  x = {":bdelete<cr>", "Close current buffer"},
  f = {":Telescope find_files<cr>", "Find Files"},
  r = {":Telescope live_grep<cr>", "Live grep"},
  tr = {":Telescope resume<cr>", "Resume Telescope"},
  gR = {"<cmd>lua vim.lsp.buf.references()<cr>", "References"}
}

local opts = {prefix =  '<leader>'}

wk.register(mappings, opts)
