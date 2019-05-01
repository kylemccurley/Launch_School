def titleize(words)
	p words.split.map {|word| word.capitalize }.join(' ')
end

titleize("the flintstones rock")