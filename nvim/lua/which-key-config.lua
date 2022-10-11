local wk = require("which-key")
local mappings = {
  q = {":q<cr>", "Quit"},
  Q = {":wq<cr>", "Save and Quit"},
  w = {":w<cr>", "Save"},
  x = {":bdelete<cr>", "Close current buffer"},
  f = {":Telescope find_files<cr>", "Find Files"},
  r = {":Telescope live_grep<cr>", "Live grep"},
}

local opts = {prefix =  '<leader>'}

wk.register(mappings, opts)
