require('nvim-treesitter').setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  indent = {
    enable = true,
  },
}

-- require('nvim-treesitter').install { 'rust', 'javascript', 'go', 'typescript', 'markdown', 'yaml', 'json', 'proto' }

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    -- Check if a Tree-sitter parser is available for the current buffer's language
    local has_parser, _ = pcall(vim.treesitter.get_parser, 0)
    
    if has_parser then
      -- Stop standard internal Neovim indent scripts from overriding this configuration
      vim.b.did_indent = 1 
      
      -- Apply Tree-sitter indentation
      vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
  end,
})
