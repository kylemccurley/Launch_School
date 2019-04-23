pass = nil

user = nil

right_pass = "McCurley"

right_user = "Kyle"

loop do
  
  puts 'Please Enter Your User Name: '
  
  user = gets.chomp
  
  puts 'Please Enter Your Password: '
  
  pass = gets.chomp
  
  break if user == right_user && pass == right_pass
  
  puts "Authorization Failed! Self Destruct Activated"
  
end

puts "Welcome!"