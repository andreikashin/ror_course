# Ranges

a = 1..3
triple_a = (1...4).map { |x| x + x + x }
p triple_a

puts (1..4) === 3.14
puts ('a'...'r') === "r"

p ('a'..'z').to_a.sample(5)

age = 55
case age
	when 0..12 then puts "Baby"
	when 13..99 then puts "Teenage"
	else puts "Getting older"
end



