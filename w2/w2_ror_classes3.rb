# Inheritance
class Dog
	def to_s
		"Dog"
	end

	def bark
		"barks loudly"
	end
end

class SmallDog < Dog
	def to_s
		"Small dog"
	end
	def bark
		"barks quietly"
	end
end

dog = Dog.new
small_dog = SmallDog.new
puts dog, dog.bark, ""
puts small_dog, small_dog.bark, ""