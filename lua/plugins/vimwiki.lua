return { 'vimwiki/vimwiki', init = function()
  local syntaxes = {
    ["go"] = "go",
    ["lua"] = "lua",
    ["bash"] = "bash",
    ["php"] = "php",
    ["python"] = "python"
 }
 
 vim.g.vimwiki_list = {
  { path = "~/Documents/main", nested_syntaxees = syntaxes },
  { path = "~/Documents/lua", nested_syntaxees = syntaxes },
  { path = "~/Documents/nvim", nested_syntaxees = syntaxes }
 }

end
}
