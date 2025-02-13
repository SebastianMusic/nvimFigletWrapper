local function figletCommand(opts)
	local input = opts.args
	vim.system({ "figlet", "-f", "slant", input }, { text = true }, function(result)
		vim.schedule(function()
			if result.code == 0 then
				local commentString = vim.bo.commentstring
				local figletString = result.stdout
				if figletString == nil then
					figletString = ""
				end
				local lines = vim.fn.split(figletString, "\n")
				for i, line in ipairs(lines) do
					local newString = commentString:gsub("%%s", line)
					lines[i] = newString
				end
				figletString = table.concat(lines, "\n")

				vim.fn.setreg('"0', figletString)
			end
		end)
	end)
end
vim.api.nvim_create_user_command("Figlet", figletCommand, { nargs = 1 })
