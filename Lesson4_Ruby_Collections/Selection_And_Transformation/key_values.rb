def select_fruit(produce)
	produce_list = produce.keys
	counter = 0
	new_list = {}
	
	loop do
		break if counter == produce_list.size
		
		current_key = produce_list[counter]
		current_value = produce[current_key]
		
		if current_value == 'Fruit'
			new_list[current_key] = current_value
		end
		
		counter += 1
	end
	
	new_list
end

produce = {
	'apple' => 'Fruit',
	'carrot' => 'Vegetable',
	'pear' => 'Fruit',
	'broccoli' => 'Vegetable'
}

p select_fruit(produce)