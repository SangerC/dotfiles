-- The K (keybind) namespace should be loaded globally
-- Set keybinds by using `K.<mode>(<key>, <cmd>, <opts>)`
-- The keybind can be annotated by adding a string:
--     K.i(...) [[This is an annotation]]

-- Declarations {{{
local binds = {}
local data = {
	plugin = nil,
	comment = nil,
	group = nil
}

local function wrapper(mode, prefix, args)
	args = args or {}
	if args.noremap == nil then args.noremap = true end

	---@param key string Keymap trigger
	---@param cmd string Command to run
	---@param opts table Options [optional]
	local function noremap(key, cmd, opts)
		if opts then
			if opts.map then
				opts.map = nil
				opts.noremap = false
			end
			for k, v in pairs(opts) do args[k] = v end
		end

		local full = key
		if prefix then full = prefix .. key end

		local keyPath = mode .. '_' .. full

		binds[keyPath] = {
			mode = mode,
			prefix = prefix,
			key = key,
			cmd = cmd,
			args = args,
			plugin = data.plugin,
			comment = data.comment,
			group = data.group
		}

		vim.api.nvim_set_keymap(mode, full, cmd, args)

		return function(comment)
			binds[keyPath].comment = comment
		end
	end

	return noremap
end

local function group(name, keybinds)
	data.group = name
	if keybinds then
		keybinds()
		data.group = nil
	end
end

local function plugin(p)
	data.plugin = p.name
	if p.keybinds then p.keybinds() end
	data.plugin = nil
end

local map = {
	i = wrapper('i'),
	n = wrapper('n'),
	v = wrapper('v'),
	t = wrapper('t'),
	c = wrapper('c'),
	sp = wrapper('n', "<space>", {silent = true}),
	group = group,
	plugin = plugin
}
-- }}}

function CullensRun()
    local filetype = vim.api.nvim_buf_get_option(0, "syntax")

    if filetype == "markdown" then
        vim.cmd("MarkdownPreview")
    elseif filetype == "tex" then
        vim.cmd("VimtexCompile")
		elseif filetype == "c" then
				vim.cmd("!gcc % & ./a.out")
		end
end

function GitCommit(push)
	local message =	vim.fn.input("Commit message: ")

	vim.cmd("!git add -A")
	vim.cmd("!git commit -m \"".. message.."\"")
	if push then
		vim.cmd("!git push")
	end

end


local function keybinds()
	--Buffers
	map.n("<C-k>", "<cmd>bnext<CR>")
	map.n("<C-j>", "<cmd>bprevious<CR>")
	map.sp("K", "<cmd>bd<CR>")

	--Splits
	map.n("<C-h>", "<C-W><C-H>")
	map.n("<C-l>", "<C-W><C-L>")

	--lsp
	map.i("<M-RETURN>","<cmd>Lspsaga code_action<CR>")
	map.n("<M-RETURN>","<cmd>Lspsaga code_action<CR>")
	map.n("<M-j>","<cmd>Lspsaga diagnostic_jump_prev<CR>")
	map.n("<M-k>","<cmd>Lspsaga diagnostic_jump_next<CR>")
	map.sp("r","Lspsaga rename<CR>")
	map.sp("d","Lspsaga lsp_finder<CR>")

	--Files
	map.sp("f", "<cmd>NvimTreeToggle<CR>")
	map.sp("F", "<cmd>NvimTreeFindFile<CR>")
	map.sp("t", "<cmd>Telescope find_files<CR>")

	--Previews
	map.sp('p', "<cmd>lua CullensRun()<CR>")

	--Save
	map.n("<C-s>", "<cmd>w<CR>")
	map.i("<C-s>", "<cmd>w<CR>")

	--Git
	map.sp("g", "<cmd>lua GitCommit(false) <CR>")
	map.sp("G", "<cmd>lua GitCommit(true) <CR>")

	--Other
	map.sp("a", "<cmd>!alacritty &<CR>")
	map.n("<M-d>", "mdO<ESC>`d")
	map.n("<M-u>", "mukdd`u")
	map.n("Y","my^y$`y")

end

return {
	keybinds = keybinds,
	binds = binds,
	map = map
}
