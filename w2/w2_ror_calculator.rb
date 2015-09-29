class Calculator
	attr_reader :name

	def initialize(name)
		@name = name
	end

	def add(one, two)
		one + two
	end

	def sub(one, two)
		one - two
	end

	def div(one, two)
		one / two
	end
end
