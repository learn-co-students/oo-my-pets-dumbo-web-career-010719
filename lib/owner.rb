require 'pry'

 class Owner

   attr_reader :species
   attr_accessor :name, :pets

   @@all = []

   def initialize(species)
     @species = species
     @pets = {:fishes => [], :dogs => [], :cats => []}
     @@all << self
   end

   def self.all
     @@all
   end

   def self.count
     @@all.count
   end

   def self.reset_all
     self.all.clear
   end

   def say_species
     "I am a #{@species}."
   end

   def buy_fish(name)
     pets[:fishes] << Fish.new(name)
   end

   def buy_cat(name)
     pets[:cats] << Cat.new(name)
   end

   def buy_dog(name)
     pets[:dogs] << Dog.new(name)
   end

   def walk_dogs
     pets[:dogs].each do |dog|
       dog.mood = "happy"
     end
   end

   def play_with_cats
     pets[:cats].each do |cat|
       cat.mood = "happy"
     end
   end

   def feed_fish
     pets[:fishes].each do |fish|
       fish.mood = "happy"
     end
   end

   def sell_pets
     pets.each do |species, info|
       info.each do |trait|
         trait.mood = "nervous"
       end
       info.clear
     end
   end

   def list_pets
     "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
   end

 end













































# require 'pry'
#
# class Owner
#
#   attr_accessor :name, :pets
#   attr_reader :species
#
#   @@all = []
#
#   def initialize(species)
#     @species = species
#     @@all << self
#     @pets = {:fishes => [], :cats => [], :dogs => []}
#   end
#
#   def self.all
#     @@all
#   end
#
#   def self.reset_all
#     @@all.clear
#   end
#
#   def self.count
#     self.all.count
#   end
#
#   def say_species
#     "I am a #{@species}."
#   end
#
#   def buy_fish(name)
#     pets[:fishes] << Fish.new(name)
#   end
#
#   def buy_cat(name)
#     pets[:cats] << Cat.new(name)
#   end
#
#   def buy_dog(name)
#     pets[:dogs] << Dog.new(name)
#   end
#
#   def walk_dogs
#     pets[:dogs].each do |dog|
#       dog.mood = "happy"
#     end
#   end
#
#   def play_with_cats
#     pets[:cats].each do |cat|
#       cat.mood = "happy"
#     end
#   end
#
#   def feed_fish
#     pets[:fishes].each do |fish|
#       fish.mood = "happy"
#     end
#   end
#
#   def sell_pets
#     pets.each do |species, traits|
#       traits.each do |trait|
#         trait.mood = "nervous"
#       end
#       traits.clear
#     end
#   end
#
#   def list_pets
#     "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
#   end
#
# end
