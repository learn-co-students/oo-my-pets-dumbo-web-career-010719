
require "pry"

class Owner
  # code goes here

  attr_reader :animal
  attr_accessor :name, :pets

  @@all = []
  @@count = 0

  def initialize(animal)
    @animal = animal
    @pets = {fishes:[],dogs:[],cats:[]}
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end

  def species
    self.animal
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def happy(animal)
    pets[animal].each do |feelings|
      feelings.mood = "happy"
    end
  end

  def walk_dogs
    happy(:dogs)
  end

  def play_with_cats
    happy(:cats)
  end

  def feed_fish
    happy(:fishes)
  end

  def sell_pets
    pets.each do |key, animal|
      animal.each do |feelings|
        feelings.mood = "nervous"
      end
    end
    @pets = {fishes:[],dogs:[],cats:[]}
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
end