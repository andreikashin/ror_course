# Scope
module V
	# starts with lowercase letter
	v1 = "Outside"

	class MyClass
		def my_method
			# giver Error -> v1 is not set here yet
			#puts v1
		end
	end
end

V::MyClass.new.my_method

module Test
	# starts with capital letter
	PI = 3.14
	class Test2
		def what_is_pi
			# value is set here (Constant)
			puts PI
		end
	end
end

Test::Test2.new.what_is_pi
