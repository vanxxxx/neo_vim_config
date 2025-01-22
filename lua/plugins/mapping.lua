local builtin = require "telescope.builtin"
return {
  vim.keymap.set("n", "<leader><leader>", builtin.find_files, { desc = "Telescope find files" }),
}
