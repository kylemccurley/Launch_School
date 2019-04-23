numbers = {
  high: 100,
  medium: 50,
  low: 10
}

half_numbers = []

numbers.each do |key, value|
  half_numbers.push(value/2)
end

puts half_numbers
