module Sports
	class Match
		attr_accessor :score
	end
end

module Patterns
	class Match
		attr_accessor :complete
	end
end

match1 = Sports::Match.new
match1.score = 45
match2 = Patterns::Match.new
match2.complete = true

puts match1.score
puts match2.complete

module SayMyName
	attr_accessor :name
	def print_name
		puts "Name: #{@name}"
	end
end

class Person
	include SayMyName
end

person = Person.new
person.name = "Joe"
person.print_name

class Player
	attr_reader :name, :age, :skill

	def initialize(name, age, skill)
		@name = name
		@age = age
		@skill = skill
	end

	def to_s
		"Name: #{@name}, Age:#{@age}, Skill:#{skill}"
	end
end

class Team
	include Enumerable
	attr_accessor :name, :players

	def initialize(name)
		@name = name
		@players = []
	end

	def add_players(*players)
		@players += players
	end
	def to_s
		"Team '#{@name}': #{@players.join(', ')}"
	end
	def each
		@players.each { |player| yield player }
	end
end

# will insert w2_ror_arrays.rb file here
require_relative 'w2_ror_arrays'

player1 = Player.new("Bob", 18, 0.59)
player2 = Player.new("Jim", 21, 0.67)
player3 = Player.new("Mike", 19, 0.87)
player4 = Player.new("Joe", 25, 0.89)
player5 = Player.new("Scott", 23, 0.55)

red_team = Team.new("Red")
red_team.add_players(player1, player2, player3, player4, player5)

donated = red_team.select { |player| (20..25) === player.age }
									.reject { |player| player.skill < 0.6 }
puts "Donated:"
puts donated