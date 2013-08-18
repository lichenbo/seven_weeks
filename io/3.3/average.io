List myAverage := method(
	result := 0
	# equivalent to self foreach(...)
	foreach( element, result = result + element)
	# equivalent to result = result / self size
	result = result/size
	)

list(1,3,2,4) myAverage println
