# describe()
# before()
# after()

# 	:all
# 	:each

# it()

require 'rspec'
require_relative '../w2_ror_calculator'

describe Calculator do
	before { @calculator = Calculator.new('RSpec calculator') }

	it "creates instance" do
		expect(@calculator).not_to be_nil
	end

	it "adds 2 numbers" do
		expect(@calculator.add(2,2)).to eq 4
	end

	it "subtracts number from another" do
		expect(@calculator.sub(4,2)).to eq 2
	end

	it "devides number by another" do
		expect(@calculator.div(6,2)).to eq 3
	end

	it "sum of two odd numbers is even" do
		expect(@calculator.add(3,3)).to be_even
	end
end