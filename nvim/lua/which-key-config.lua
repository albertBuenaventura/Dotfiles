local wk = require("which-key")
local mappings = {
  q = {":q<cr>", "Quit"},
  Q = {":wq<cr>", "Save and Quit"},
  w = {":w<cr>", "Save"},
  x = {":bdelete<cr>", "Close current buffer"},

  -- Telescope
  ff = {":Telescope find_files<cr>", "Find Files"},
  fg = {":Telescope live_grep<cr>", "Live grep"},
  fb = {":Telescope buffers<cr>", "Buffers"},
  fr = {":Telescope resume<cr>", "Resume Telescope"},
  fo = {":Telescope oldfiles<cr>", "Previously Open Files"},
  gs = {":Telescope git_status<cr>", "Git Status"},

  -- lsp
  gr = {":Telescope lsp_references<cr>", "References"},
  gD = {"<cmd>lua vim.lsp.buf.declaration()<cr>", "Go to declaration"},
  gd = {":Telescope lsp_definitions<cr>", "Go to definition"},
  gi = {"<cmd>lua vim.lsp.buf.implementa<cmd>lua require('telescope.builtin').lsp_definitions()<cr>tion()<cr>", "Go to implementation"},
  K = {"<cmd>lua vim.lsp.buf.hover()<cr>", "View Type"},
  td = {"<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type definition"},
  rn = {"<cmd>lua vim.lsp.buf.rename()<cr>", "Rename"},
}

local opts = {prefix =  '<leader>'}

wk.register(mappings, opts)
