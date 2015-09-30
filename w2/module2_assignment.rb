#Implement all parts of this assignment within (this) module2_assignment2.rb file

#Implement a class called LineAnalyzer.
class LineAnalyzer
  #Implement the following read-only attributes in the LineAnalyzer class. 
  #* highest_wf_count - a number with maximum number of occurrences for a single word (calculated)
  attr_accessor :highest_wf_count
  
  #* highest_wf_words - an array of words with the maximum number of occurrences (calculated)
  attr_accessor :highest_wf_words
  
  #* content,         - the string analyzed (provided)
  attr_accessor :content
  
  #* line_number      - the line number analyzed (provided)
  attr_accessor :line_number

  #Add the following methods in the LineAnalyzer class.
  #* initialize() - taking a line of text (content) and a line number
  def initialize(content, line_number)
    self.line_number = line_number
    self.content = content
    self.calculate_word_frequency
  end

  #* calculate_word_frequency() - calculates result
  def calculate_word_frequency()
    self.highest_wf_count = 1
    self.highest_wf_words = []
    arr = self.content.split
    arr.each do |word|
      cnt = 0
      self.content.split.map { |item| cnt += 1 if item.downcase == word.downcase }

      if self.highest_wf_count <= cnt and cnt > 1
        self.highest_wf_count = cnt 
        self.highest_wf_words << word.downcase unless self.highest_wf_words.include?(word.downcase)
      end
    end
    self.highest_wf_count
  end


  #Implement the initialize() method to:
  #* take in a line of text and line number
  #* initialize the content and line_number attributes
  #* call the calculate_word_frequency() method.

  #Implement the calculate_word_frequency() method to:
  #* calculate the maximum number of times a single word appears within
  #  provided content and store that in the highest_wf_count attribute.
  #* identify the words that were used the maximum number of times and
  #  store that in the highest_wf_words attribute.
end

#  Implement a class called Solution. 
class Solution

  attr_accessor :analyzers
  # Implement the following read-only attributes in the Solution class.
  #* highest_count_across_lines - a number with the value of the highest frequency of a word
  attr_accessor :highest_count_across_lines

  #* highest_count_words_across_lines - an array with the words with the highest frequency
  attr_accessor :highest_count_words_across_lines

  attr_accessor :print_highest_word_frequency_across_lines

  # Implement the following methods in the Solution class.
  #* analyze_file() - processes 'test.txt' intro an array of LineAnalyzers
  def analyze_file
    self.analyzers = []
    cnt = 1
    puts "Check file..."
    if File.exist? 'test.txt'
      puts "File found."
      File.foreach("test.txt") do |line|
        self.analyzers.push(LineAnalyzer.new(line, cnt))
        cnt += 1
      end
    else
      puts "...No such file"
    end
  end

  def initialize
    self.analyzers = []
  end

  #* calculate_line_with_highest_frequency() - determines which line of
  #text has the highest number of occurrence of a single word
  def calculate_line_with_highest_frequency()
    cnt = 0
    line = 0
    words = []
    self.highest_count_across_lines
    self.highest_count_words_across_lines = []

    self.analyzers.each do |analyzer|
      analyzer.calculate_word_frequency()
      if analyzer.highest_wf_count >= cnt
        cnt = analyzer.highest_wf_count
        line = analyzer.line_number
        self.highest_count_words_across_lines.push(analyzer)
      end
    end
    self.print_highest_word_frequency_across_lines = words
    self.highest_count_across_lines = cnt
  end

  #* print_highest_word_frequency_across_lines() - prints the words with the 
  #highest number of occurrences and their count
  def print_highest_word_frequency_across_lines()
    cnt = 0
    self.analyzers.each do |analyzer|
      analyzer.calculate_word_frequency()
      if analyzer.highest_wf_count > cnt
        cnt = analyzer.highest_wf_count
      end
    end
  end
  
  # Implement the analyze_file() method() to:
  #* Read the 'test.txt' file in lines 
  #* Create an array of LineAnalyzers for each line in the file

  # Implement the calculate_line_with_highest_frequency() method to:
  #* calculate the highest number of occurences of a word across all lines
  #and stores this result in the highest_count_across_lines attribute.
  #* identifies the words that were used with the highest number of occurrences
  #and stores them in print_highest_word_frequency_across_lines.

  #Implement the print_highest_word_frequency_across_lines() method to
  #* print the result in the following format
end


# line_analyzer = 
#   LineAnalyzer.new(
#     "This is a really really really cool cool you you you", 
#     0)

#line_analyzer.calculate_word_frequency
#puts line_analyzer.highest_wf_count
#puts line_analyzer.highest_wf_words

# solution = Solution.new
# solution.analyze_file
# solution.calculate_line_with_highest_frequency()
# solution.print_highest_word_frequency_across_lines()
# p solution.highest_count_words_across_lines
#puts solution.analyzers.length


# solution = Solution.new
# solution.analyze_file
# puts solution.calculate_line_with_highest_frequency
# puts solution.highest_count_words_across_lines
# words_found = solution.highest_count_words_across_lines.map(&:highest_wf_words).flatten
# puts words_found