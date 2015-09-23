# Methods
def simple
	puts "simple"
end

def very_simple()
	puts "very simple"
end

simple
simple()
very_simple
very_simple()

def add(one, two)
	one + two
end

def divide(one, two)
	return "dividing by zero" if two == 0
	one/two # no return required, 
	#last executed line is returned anyway
end

puts add(1,2)
puts divide(4,2)
puts divide(4,0)

# predecate methods
def can_divide_by?(number)
	return false if number.zero?
	true
end

def factorial_default_5(n = 5)
	n == 0 ? 1 : n * factorial_default_5(n - 1)
end

puts factorial_default_5(3)
puts factorial_default_5()

# splat
def max(one, *numbers, two)
	numbers.max
end

puts max("one", 2, 32, 4, "two")
