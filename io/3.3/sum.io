sum := Object clone
sum calculate := method(array, 
	result := 0
	array foreach(arr, 
		arr foreach( element, result = result+element))
	result println)

sum calculate(list(list(1,3),list(2,4)))
