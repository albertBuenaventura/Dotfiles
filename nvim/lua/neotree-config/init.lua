require("neo-tree").setup({
  close_if_last_window = true,
  window = {
    width = 50
  },
  filesystem = {
    filtered_items = {
      visible = true
    },
    follow_current_file = true
  }
})

