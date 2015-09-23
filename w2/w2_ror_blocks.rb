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