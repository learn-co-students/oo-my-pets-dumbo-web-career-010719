class Owner
attr_accessor :pets, :name
attr_reader :species

@@owners = []
@@count = 0

	def initialize(species)
		@pets = {:fishes => [], :cats => [], :dogs => []}
		@name = name
		@species = "human"
		@@owners << self
		@@count += 1

	end

	def self.all
		return @@owners
	end

	def self.count
		return @@count
	end

	def self.reset_all
		@@owners.clear 
		@@count = 0
	end

	def say_species
		return "I am a #{species}."
	end

	def buy_fish(fish_name)
		@pets[:fishes] << Fish.new(fish_name)
	end

	def buy_cat(cat_name)
		@pets[:cats] << Cat.new(cat_name)
	end

	def buy_dog(dog_name)
		@pets[:dogs] << Dog.new(dog_name)
	end

	def walk_dogs
		@pets[:dogs].each { |dogs| dogs.mood = "happy" }
	end

	def play_with_cats
		@pets[:cats].each { |cats| cats.mood = "happy" }
	end

	def feed_fish
		@pets[:fishes].each { |fishes| fishes.mood = "happy" }
	end

	def sell_pets
		@pets[:dogs].each { |dogs| dogs.mood = "nervous" }
		@pets[:cats].each { |cats| cats.mood = "nervous" }
		@pets[:fishes].each { |fishes| fishes.mood = "nervous" }

		@pets = {}
	end

	def list_pets
		return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."	
	end
end