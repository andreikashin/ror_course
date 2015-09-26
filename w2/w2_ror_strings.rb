# Strings
my_name = " tim"
puts my_name
p my_name
my_Name = my_name.lstrip!.capitalize!
puts my_name, my_Name

my_name[0] = 'K'
puts my_name

cur_weather = %Q{It's a hot day outside
				 Grab your umbrellas}

current_weather = "It's a hot day outside\n\t\t\t\t Grab your umbrellas"

puts cur_weather == current_weather

cur_weather.lines do |line|
	line.sub! 'hot', 'rainy'
	puts line.strip
end
puts "hello " + "hell no"