require("obsidian").setup {
  workspaces = {
    {
      name = "perso",
      path = "/home/myschkin/Documents/perso",
    },
    {
      name = "cours",
      path = "/home/myschkin/Documents/cours",
    },
  },
  completion = {
    nvim_cmp = true,
    min_chars = 2,
  },
}
