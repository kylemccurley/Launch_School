process_the_loop = [true,false].sample
loop do
	sentence = process_the_loop ? "The loop was processed!" : "The loop was not processed!"
	p sentence
	break
end