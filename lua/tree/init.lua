-- https://github.com/nvim-neo-tree/neo-tree.nvim
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require'nvim-tree'.setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 35,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    enable = false,
    dotfiles = false,
  },
})

local M = {}

function M.find_file_and_focus()
  local actions = require("telescope.actions")
  local action_state = require("telescope.actions.state")

  local function open_nvim_tree(prompt_bufnr, _)
    actions.select_default:replace(function()
      local api = require("nvim-tree.api")

      actions.close(prompt_bufnr)
      local selection = action_state.get_selected_entry()
      local path = selection.cwd .. "/" .. selection.value
      api.tree.open()
      api.tree.find_file(path)
      api.node.open.edit()
    end)
    return true
  end

  require("telescope.builtin").find_files({
    find_command = { "fd", "--type", "file", "--hidden", "--exclude", ".git/*" },
    attach_mappings = open_nvim_tree,
  })
end

function M.find_directory_and_focus()
  local actions = require("telescope.actions")
  local action_state = require("telescope.actions.state")

  local function open_nvim_tree(prompt_bufnr, _)
    actions.select_default:replace(function()
      local api = require("nvim-tree.api")

      actions.close(prompt_bufnr)
      local selection = action_state.get_selected_entry()
      local path = selection.cwd .. "/" .. selection.value
      api.tree.open()
      api.tree.find_file(path)
    end)
    return true
  end

  require("telescope.builtin").find_files({
    find_command = { "fd", "--type", "directory", "--hidden", "--exclude", ".git/*" },
    attach_mappings = open_nvim_tree,
  })
end

function M.live_grep()
  local actions = require("telescope.actions")
  local action_state = require("telescope.actions.state")

  local function open_nvim_tree(prompt_bufnr, _)
    actions.select_default:replace(function()
      local api = require("nvim-tree.api")

      actions.close(prompt_bufnr)
      local selection = action_state.get_selected_entry()
      local split = {}
      for s in (selection.value .. ":"):gmatch("(.-)" .. ":") do
        table.insert(split, s)
      end
      local path = selection.cwd .. "/" .. split[1]
      api.tree.open()
      api.tree.find_file(path)
      api.node.open.edit()
      vim.api.nvim_win_set_cursor(0, { tonumber(split[2]), tonumber(split[3]) })
    end)
    return true
  end

  require("telescope.builtin").live_grep({
    attach_mappings = open_nvim_tree,
  })
end

return M
