# Flow of control
a = 4
if a == 3
	puts "a is 3"
elsif a == 5
	puts "a is 5"
else
	puts "a isnt 3 or 5"
end

b = 5
unless b == 6
	puts "b is not 6"
end

c = 1
while c < 5
	puts c
	c += 1
end

d = 1
until d >= 5
	puts d
	d += 1
end

# one liner
puts "one liner" if c == 5 and d == 5

e = 1
e *= 2 while e < 100
puts e

puts "if 0" if 0
puts "if 'false'" if "false"

if /sera/ === "coursera"
	puts "==="
end

if Integer === 42
	puts "42 is Integer"
end

# Case Statement
f = 3
case
when f === 1
	puts "f == 1"
when f > 2
	puts "f > 2"
end

# using === 
g = 4
case g
	when Integer
		puts "g is Integer"
end

fish = "Fishing"
case fish
	when /fish/i then puts "Fish detected"
end

# for loop
for i in 0..2
	puts i
end
# not recommended to use