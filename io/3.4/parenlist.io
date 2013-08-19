Builder := Object clone
Builder forward := method(
	if (call message name == "mylist", 
		temp := List clone
		call message arguments foreach(
			arg,
			temp append(doMessage(arg))
			//writeln(Builder)
			)
	)
	return temp
)

Builder mylist(2,mylist(1),3) println

