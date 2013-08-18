Two_Dim := Object clone
Two_Dim dim := method( x, y, 
	self contents := List clone 
	for (i, 0, y-1, 
		sub_contents := list()
		for (j, 0, x-1, sub_contents append(0))
		contents append(sub_contents)))
Two_Dim set := method(x, y, set_content, 
	contents atPut (y, contents at(y) atPut(x, set_content)))
Two_Dim get := method(x, y, 
	contents at(y) at(x))
Two_Dim trans := method(
	old_matrix := contents
	y := contents size
	x := contents at(0) size
	dim(y,x)
	for(i, 0, y-1,
		for(j, 0 ,x-1,
			set(i, j, old_matrix at(i) at(j)))))

Two_Dim dim(2,3)
Two_Dim set(1,2,34)
Two_Dim contents println
Two_Dim trans
Two_Dim contents println
