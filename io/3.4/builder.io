OperatorTable addAssignOperator(":", "writeAttr")
Builder := Object clone
Builder tabs := ""
Builder writeAttr := method(
	writeln("get it")
	write(call evalArgAt(0), " = ", call evalArgAt(1))
	)
Builder forward := method(
	writeln(tabs, "<", call message name, ">")
	tabs = tabs .. " "
	call message arguments foreach(
		arg,
		content := self doMessage(arg)
		if(content type == "Sequence", writeln(tabs, content)))
	tabs = tabs exSlice(1)
	writeln(tabs, "</", call message name, ">"))
Builder curlyBrackets := method(
	call message arguments foreach(arg,
		arg println
		Builder doMessage(arg)
		)
	)

Builder ul({"hs":"sh"},
	li("Io"),
	li("Lua"),
	li("Javascript"))
