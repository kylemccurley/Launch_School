def multiply(numbers, multiplier)
	counter = 0
	multiplied_numbers = []
	
	loop do
		break if counter == numbers.size
		
		multiplied_numbers << numbers[counter] *= multiplier
		counter += 1
	end
	
	p multiplied_numbers
end


my_numbers = [1,4,3,7,2,6]
p "Numbers before mutation: #{my_numbers}"
multiply(my_numbers, 3)