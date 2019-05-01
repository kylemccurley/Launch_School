statement = 'The Flintstones Rock!'
hash = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |l|
	letter_frequency = statement.scan(l).count
	hash[l] = letter_frequency if letter_frequency > 0
end

p hash