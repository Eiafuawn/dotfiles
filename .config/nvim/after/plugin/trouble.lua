local wk = require("which-key")
local trouble = require("trouble")
wk.register({
  x = {
    name = "Trouble",
    x = { function() trouble.toggle() end, "Toggle Trouble" },
    w = { function() trouble.toggle("workspace_diagnostics") end, "Toggle Workspace Diagnostics" },
    d = { function() trouble.toggle("document_diagnostics") end, "Toggle Document Diagnostics" },
    q = { function() trouble.toggle("quickfix") end, "Toggle Quickfix" },
    l = { function() trouble.toggle("loclist") end, "Toggle Loclist" },
  }
})
