require 'httparty'

class Recipe
	include HTTParty

	ENV['FOOD2FORK_KEY'] = '8174232f54d6349467bce00211ca5b0e'

	base_uri 'http://food2fork.com/api'
  default_params key: ENV['FOOD2FORK_KEY'], q: "search"
  format :json

	def self.for term
		get("/search", query: {q: term})["recipes"]
	end

end

p Recipe.for "a"