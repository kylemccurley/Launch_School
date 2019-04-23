count = 1

loop do
	while count <= 5
		sentence = count.odd? ? "#{count} is odd!" : "#{count} is even!"
		p sentence
		count += 1
	end
end