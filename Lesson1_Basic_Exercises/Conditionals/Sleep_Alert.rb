status = ['awake', 'tired'].sample
puts status
alert = if status == 'awake'
"Be productive!"
else
"Go to sleep"
end

puts alert

