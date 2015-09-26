File.foreach("test.txt") do |line| 
	puts line
	p line
	p line.chomp
	p line.split
end

begin
	File.foreach("_test.txt") do |line| 
		puts line
	end
rescue Exception => e
	puts e.message
	puts "Exception handled"
end
puts "Using 'rescue' program can continue execution"

if File.exist? '_test.txt'
	File.foreach("_test.txt") do |line| 
		puts line
	end
else
	puts "File not found =("
end

File.open("new_test.txt", "w") do |file|
	file.puts "Line number 1"
	file.puts "Line number 1"
	puts "File created"
end

puts ENV["PATH"]