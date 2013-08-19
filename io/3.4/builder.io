Builder := Object clone
Builder tabs := ""
Builder forward := method(
	writeln(tabs, "<", call message name, ">")
	tabs = tabs .. " "
	call message arguments foreach(
		arg,
		content := self doMessage(arg);
		if(content type == "Sequence", writeln(tabs, content)))
	tabs = tabs exSlice(1)
	writeln(tabs, "</", call message name, ">"))

Builder ul(
	li("Io"),
	li("Lua"),
	li("Javascript"))
