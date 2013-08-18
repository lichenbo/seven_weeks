Fib := Object clone
Fib fib := method(number, 
	if (number == 0, return 0)
	if (number == 1, 1, fib(number-1)+fib(number-2))
	)

writeln(Fib fib(9))
