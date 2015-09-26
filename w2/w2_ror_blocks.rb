# Blocks

3.times { |index| puts index if index >= 0 }

3.times do |index|
	if index >=0
		puts index
	end
end

3.times { |index|
	if index >=0
		puts index
	end
} # not used by convention

# implicit Blocks
def two_times_implicit
	return "No block" unless block_given?
	yield
	yield
end

def two_times_explicit(&i_am_a_block)
	return "No block" if i_am_a_block.nil?
	i_am_a_block.call
	i_am_a_block.call
end

puts two_times_explicit
two_times_explicit {puts "Hello"}

# just simple code block
def simple
	puts "Here comes the code block!"
	yield
	puts "There was the code block!"
end
simple {puts "Hooray! The code block is here!"}

# optional code block
def optional 
	puts "A code block is not required"
	yield if block_given?
end
optional

def parameters
	puts "Two random numbers:"
	yield rand(5), rand(5)-4 if block_given?
	puts "End"
end
parameters { |x, y| puts "#{x}, #{y}" }
parameters { puts "No parameters" }
parameters { |x| puts "#{x}" }
parameters { |x, y| puts "#{y}" }

# number of parameters
def variable(&block)
	puts "Here goes:"
	case block.arity
		when 1 
			yield "One"
		when 2 
			yield "One", "Two"
		when 3 
			yield "One", "Two", "Three"
		else 
			yield "Zero or 4"
	end
	puts "Done"
end
variable {}
variable { |x| puts x }
variable { |x, y| puts x, y }
variable { |x, y, z| puts x, y, z }
variable { |x, y, z, aa| puts x, y, z, aa }

# # a useless transaction
# class Person
# 	attr_reader :name

# 	@@names = %w(Leroy Sparkles Thaddius)

# 	def name(new_name)
# 		@name = new_name
# 		if @@names.include? new_name
# 			raise "Name in list: #{@name}." 
# 		end
# 	end

# 	def initialize(name)
# 		@name = name
# 	end

# 	def transact(&block)
# 		old_name = @name
# 		begin
# 			yield self if block_given?
# 		rescue
# 			@name = old_name
# 		end
# 	end
# end

# puts "Create person:"
# mr_pibbles = Person.new("Mr. Pibbles")
# mr_pibbles.name = "Sparkless"
# puts mr_pibbles.name
# mr_pibbles.transact do |anp|
# 	anp.name = "Leroy"
# end
# puts mr_pibbles.name






