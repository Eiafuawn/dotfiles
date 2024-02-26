local harpoon = require('harpoon')
local wk = require("which-key");
harpoon:setup({})

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end

  require("telescope.pickers").new({}, {
    prompt_title = "Harpoon",
    finder = require("telescope.finders").new_table({
      results = file_paths,
    }),
    previewer = conf.file_previewer({}),
    sorter = conf.generic_sorter({}),
  }):find()
end

wk.register({
  h = {
    e = { function() toggle_telescope(harpoon:list()) end, "Harpoon: Open file" },
    a = { function() harpoon:list():append() end, "Harpoon: Add file" },
    d = { function() harpoon:list():remove() end, "Harpoon: Remove file" },
    h = { function() harpoon:list():select(1) end, "Harpoon: Select file 1" },
    j = { function() harpoon:list():select(2) end, "Harpoon: Select file 2" },
    k = { function() harpoon:list():select(3) end, "Harpoon: Select file 3" },
    l = { function() harpoon:list():select(4) end, "Harpoon: Select file 4" },
    p = { function() harpoon:list():prev() end, "Harpoon: Previous file" },
    n = { function() harpoon:list():next() end, "Harpoon: Next file" },
  }
}, { prefix = "<leader>"})
