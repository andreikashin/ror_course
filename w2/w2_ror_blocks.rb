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