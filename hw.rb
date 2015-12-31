class Utility
	def initialize(str)
		@str=str
		# The class Utility takes the initializer "str" which is set as an instance var
	end
	def count_words
		a = @str.tr(".", "").tr(",", "").downcase
		# cleans up str. Removes punctuation and puts string in lowercase 
		b = a.split
		# puts a into an array
		counts = Hash.new 0
		b.each do |word|
			counts[word] += 1
		end
		# loops through b and adds 1 to the values of each word (key) every time the word appears 
		return counts
		# returns counts
	end
end

test = Utility.new("It was the best of times, it was the worst of times.")

puts test.count_words #{"it"=>2, "was"=>2, "the"=>2, "best"=>1, "of"=>2, "times"=>2, "worst"=>1}

class Animal
	attr_accessor :sound
	attr_accessor :species
	def speak
		puts "The #{self.species} says " + self.sound
	end
end

cow = Animal.new
cow.sound = "moo"
cow.species = "cow"
puts cow.speak
# Creates an instance of Animal called cow with attributes sound and species
# then puts cow.speak which outputs "The cow says moo"

class Dinosaurs < Animal
	# creates a subclass Dinosaurs
	def speak
		puts "Unfortunately we don't know what sounds a #{self.species} made"
	end
	# overrides speak
end

t_Rex = Dinosaurs.new
t_Rex.species = "T-Rex"

puts t_Rex.speak