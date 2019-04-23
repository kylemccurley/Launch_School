num = ""
dem = ""


def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

loop do
  puts "Please Enter The Numerator: "
  num = gets.chomp
  puts "Please Enter The Denominator: "
  dem = gets.chomp
  break if valid_number?(num) && valid_number?(dem)
  puts "Only integers are allowed"
end

puts "#{num.to_i} / #{dem.to_i} is #{num.to_i/dem.to_i}"




