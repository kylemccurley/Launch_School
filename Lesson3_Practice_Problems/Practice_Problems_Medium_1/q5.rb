limit = 15

def fib(first_num, second_num, limit) #added limit as an additional argument
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit) #passed limit as an argument since limit can be accessed in this scope
puts "result is #{result}"