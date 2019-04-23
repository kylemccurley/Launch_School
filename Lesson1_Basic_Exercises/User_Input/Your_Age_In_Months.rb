loop do
  puts "What is your age in years?"
  answer = gets.chomp.to_i
  months = answer*12
  puts "You Are #{months} Months Old."
end
