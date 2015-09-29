require 'test/unit'
require_relative 'w2_ror_calculator'

class CalculatorTest < Test::Unit::TestCase
	def setup
		@calc = Calculator.new("test")
	end

	def test_add
		assert_equal 4, @calc.add(2, 2)
	end

	def test_sub
		assert_equal 2, @calc.sub(4, 2)
	end

	def test_div
		assert_equal 2, @calc.div(4, 2)
	end

	def test_divide_by_zero
    assert_raise ZeroDivisionError do 
      @calc.div(1, 0)
    end
  end
end
