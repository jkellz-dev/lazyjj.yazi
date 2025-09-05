return {
	entry = function()
		---@diagnostic disable-next-line: undefined-field
		local output = Command("jj"):arg("status"):stderr(Command.PIPED):output()
		if not output == nil then
			ya.err("`jj status` output is nil")
			ya.notify({
				title = "LazyJJ",
				content = "Error: `jj status` output is nil",
				level = "error",
				timeout = 5,
			})
			return
		end
		---@diagnostic disable-next-line: need-check-nil
		if output.stderr ~= "" then
			---@diagnostic disable-next-line: need-check-nil
			ya.err("failed to run 'jj status': " .. output.stderr)
			ya.notify({
				title = "LazyJJ",
				---@diagnostic disable-next-line: need-check-nil
				content = output.stderr,
				level = "error",
				timeout = 5,
			})
			return
		end

		ya.dbg("launching lazyjj")
		ya.hide()

		local success, err_code, code = os.execute("lazyjj")
		ya.dbg(
			"lazyjj success: "
				.. tostring(success)
				.. ", err_code: "
				.. tostring(err_code)
				.. ", code: "
				.. tostring(code)
		)
		if not success then
			ya.err("failed to launch lazyjj, err_code: " .. tostring(err_code) .. ", code: " .. tostring(code))

			ya.notify({
				title = "LazyJJ",
				content = "lazyjj exited with code " .. tostring(code),
				level = "error",
				timeout = 5,
			})
		end
	end,
}
