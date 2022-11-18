local wk = require("which-key")
local mappings = {
  q = {":q<cr>", "Quit"},
  Q = {":wq<cr>", "Save and Quit"},
  w = {":w<cr>", "Save"},
  x = {":bdelete<cr>", "Close current buffer"},
  ff = {":Telescope find_files<cr>", "Find Files"},
  fg = {":Telescope live_grep<cr>", "Live grep"},
  fb = {":Telescope buffers<cr>", "Buffers"},
  fr = {":Telescope resume<cr>", "Resume Telescope"},

  -- lsp
  gr = {"<cmd>lua vim.lsp.buf.references()<cr>", "References"},
  gD = {"<cmd>lua vim.lsp.buf.declaration()<cr>", "Go to declaration"},
  gd = {"<cmd>lua vim.lsp.buf.definition()<cr>", "Go to definition"},
  gi = {"<cmd>lua vim.lsp.buf.implementation()<cr>", "Go to implementation"},
  K = {"<cmd>lua vim.lsp.buf.hover()<cr>", "View Type"},
  td = {"<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type definition"},
  rn = {"<cmd>lua vim.lsp.buf.rename()<cr>", "Rename"},
  fc = {"<cmd>lua function() vim.lsp.buf.format { async = true } end<cr>", "Format code"},
}

local opts = {prefix =  '<leader>'}

wk.register(mappings, opts)
