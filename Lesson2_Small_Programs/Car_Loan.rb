def prompt(message)
	
	Kernel.puts(message)
	
end

loop do

prompt("What is your loan amount")

loop do
	
	amount = Kernel.gets.chomp()
	
	if amount.empty? || amount.to_f < 0
		
		prompt("Please enter a positive number")
		
	else
		
		break
		
	end
	
end

interest_rate = ''

loop do
	
 	interest_rate = Kernel.gets.chomp
 	
 	if interest_rate.empty?() || interest_rate.to_f() < 0
 		
 		prompt("Must enter a positive number")
 		
 	else
 		
 		break
 		
	end
	
end


prompt("What is the loan duration? (in years)")

years = ''

loop do
	
	years = Kernel.gets().chomp()
	
	if years.empty?() || years.to_i() < 0
		
		prompt("Enter a valid number")
		
	else
		
		break
		
	end
	
end

annual_interest_rate = interest_rate.to_f()/100

monthly_interest_rate = annual_interest_rate/12

months = years.to_i()*12

monthly_payment = amount.to_f() * (monthly_interest_rate/(1-(1+monthly_interest_rate)**(-months)))

prompt("Your payment is: $#{format('%02.2f', monthly_payment)}")

prompt("Another Calculation?")

answer = Kernel.gets.chomp()

break unless answer.downcase().start_with == 'y'

end

prompt("Thank you for using the Mortgage Calculator!")

prompt("Good Bye!")