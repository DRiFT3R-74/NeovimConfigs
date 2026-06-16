--Bootstrap lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

--line numbers
vim.opt.number = true
vim.opt.relativenumber = true

--Default 2 tab/shift
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.expandtab = true

--Python 4 tab/shift
vim.api.nvim_create_autocmd("FileType",{
  pattern = "python",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
  end
})

vim.g.mapleader = " "
--nvim-tree toggle
vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })
--mini.files toggle
vim.keymap.set("n", "<leader>m", ":lua MiniFiles.open()<CR>", {desc = "Mini files"})

require("lazy").setup("plugins")

--transparent background
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

