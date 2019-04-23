choice = nil


loop do
  
  puts ">> Do you want me to print something? (y/n)"
  
  choice = gets.chomp.downcase
  
 break if['y', 'n'].include?(choice)
 
 puts "Wrong Input, Dumbass"
 
end

if choice == 'y'
  puts 'something'
end