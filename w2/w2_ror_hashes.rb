# Hashes
editor_props = {"font" => "Arial", "size" => 12, "color" => "red"}
puts editor_props.length
puts editor_props["size"]

editor_props["background"] = "blue"
puts editor_props.size

editor_props.each_pair do |key, value|
	puts "Key: #{key}, Value: #{value}"
end
editor_props.each_pair { |key, value| print key, " ", value, "\n" }


word_freq = Hash.new(0)

sentence = "Chicka chicka boom boom"
sentence.split.each do |word|
	word_freq[word.downcase] += 1
end
p word_freq

family = {oldest: "Jim", older: "Joe", younger: "Jack"}
family[:youngest] = "Jeremy"
p family

