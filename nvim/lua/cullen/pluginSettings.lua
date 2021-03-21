
-- Nvim lua Tree
vim.g.nvim_tree_ignore = {'.git', 'node_modules', '.cache'}
vim.g.tree_auto_open = true

--Snippets

--Instant Nvim
vim.g.instant_username = "SangerC"

--LSP config
local lspconfig = require('lspconfig')

--C
lspconfig.clangd.setup{}

--Lua
lspconfig.sumneko_lua.setup {
  cmd = {"/usr/bin/lua-language-server", "-E", "/usr/share/lua-language-server/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
    },
  },
}

-- HTML
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.html.setup {
  capabilities = capabilities,
}

--CSS
lspconfig.cssls.setup{}

--Javascript
lspconfig.tsserver.setup{}

--Tex
lspconfig.texlab.setup{}

--Python
lspconfig.pyls_ms.setup{
cmd = { "dotnet", "exec", "/home/cullen/git/python-language-server/output/bin/Debug/Microsoft.Python.LanguageServer.dll" };
}

--Rust
lspconfig.rust-analyzer.setup{}

--Compe
local compe = require("compe")

compe.setup {
    enabled = true;
    autocomplete = true;
    debug = false;
    min_length = 1;
    preselect = "always";
    throttle_time = 80;
    source_timeout = 100;
    incomplete_delay = 400;
    max_abbr_width = 100;
    max_kind_width = 100;
    max_menu_width = 100;

    source = {
        path = true;
        buffer = true;
        calc = true;
        vsnip = true;
        nvim_lsp = true;
        nvim_lua = true;
        spell = false;
        tags = true;
        snippets_nvim = true;
        treesitter = false;
    };
}




require("bufferline").setup()
