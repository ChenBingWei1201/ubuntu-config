-- place the file in /custom/themes/<theme-name>.lua
-- for example: custom/themes/siduck.lua

local M = { dark = require "themes.dark" }

function M.get_colors(mode)
  if not vim.tbl_contains(vim.tbl_keys(M), mode) then
    return M["dark"]
  end

  return M[mode]
end

--M.base_30 = {
-- 30 colors based on base_16
--}

--M.base_16 = {
-- base16 colors
--}

M.type = "dark" -- light / dark

return M
