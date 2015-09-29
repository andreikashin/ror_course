# Classes
class Person
	attr_accessor :age
	attr_reader :sex

	# Constructor
	def initialize (name, age, sex)
		@name = name
		@age  = age
		self.sex = sex
		self.print name
	end

	def get_info
		@additional_info = "Interesting"
		"Name: #{@name}, age: #{@age}"
	end

	def print(line)
		puts "print: "
		puts line
	end

	# getter
	def name
		@name
	end

	# setter
	def name= (new_name)
		@name = new_name
	end

	def sex= (new_sex)
		@sex = new_sex if new_sex == "male" or new_sex == "female"
	end
end

person1 = Person.new("Joe", 14, "female")
p person1.instance_variables
p person1.get_info

p person1.name
person1.name = "Jeff"
p person1.name

person1.age = 15
p person1.age

person1.sex = "other"
p person1.sex
person1.sex = "male"
p person1.sex