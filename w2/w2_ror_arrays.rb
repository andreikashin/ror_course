# arrays 
het_array = [1, "two", :three]
puts het_array[-1]

arr_words = %w{ what a great day today }
puts arr_words.size
arr_words.each do |line|
	puts line.capitalize!
end
puts "#{arr_words.first} - #{arr_words.last}"
p arr_words[-2, 2]

p arr_words[0..4]
arr_words.push('!')
puts arr_words.join(' ')

puts arr_words.sample(1)

#LIFO
stack = []; stack << "one"; stack.push("two")
puts stack.pop

#FIFO
queue = []; queue << "one" << "two"
p queue.first
puts queue.size
puts queue.shift
puts queue.size
p queue.first

a = [5,3,1,4,2]
p a.sort!.reverse!
a[6] = 7
p a

#array methods: each, select, reject, map
a.each { |x| p x }
new_a = a.reject { |x| x.nil? }
big_a = new_a.select { |x| x > 3 }
new_a.reject! { |x| x <= 3 }
p big_a
p new_a

b = [1, 2, 3, 4, 5]
triple_b = b.map { |x| x * 3 }
p triple_b

