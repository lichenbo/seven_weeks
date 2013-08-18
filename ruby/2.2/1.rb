puts 'Hello, world.'
puts 'Hello, Ruby.'.count('Ruby.')
puts 'lichenbo' * 10
for n in 1..10
		puts "This is sentence number #{n}"
end

randomNumber = rand(10)
puts 'Please input a number'
input = gets().to_i
while input != randomNumber
		if ( input > randomNumber)
				puts 'Too big'
		else
				puts 'Too small'
		end
		input = gets().to_i
end
puts 'Correct!'
