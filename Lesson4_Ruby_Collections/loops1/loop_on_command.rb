loop do
	puts 'Should I stop looping?'
	answer = gets.chomp
	break if answer.downcase == 'yes'
	puts "Please enter 'yes' if you would like to stop looping."
end