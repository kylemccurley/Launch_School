daylight = [true,false].sample

def time_of_day(day_night)
  if day_night
    puts "It's daytime"
  end
  if day_night == false
    puts "It's nighttime"
  end
end

time_of_day(daylight)
