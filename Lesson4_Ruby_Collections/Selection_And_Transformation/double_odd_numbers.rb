def double_odd_numbers(numbers)
	counter = 0
	
	loop do
		numbers[counter] *= 2 if counter.odd?
		counter += 1
		break if counter == numbers.size
	end
	numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p "My Numbers Pre-Mutation: #{my_numbers}"
p "My Numbers Post-Mutation: #{double_odd_numbers(my_numbers)}"  # => [2, 4, 6, 14, 2, 6]
