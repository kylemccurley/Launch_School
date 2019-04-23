numbers = []
loop do
  puts 'Enter Any Number: '
  input = gets.chomp.to_i
  numbers.push(input)
  break if numbers.size == 5
end
puts numbers
