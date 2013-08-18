guess := Object clone
guess guess := method(
	writeln("Please input a number between 1 - 100 (excluded):")
	result := (Random value(98) + 1) floor
	standardIO := File standardInput()
	10 repeat(
		current_guess := standardIO readLine asNumber
		if (current_guess > result, "Too big" println)
		if (current_guess < result, "Too small" println)
		if (current_guess == result, 
			"Correct" println
			return)))
		
guess guess
