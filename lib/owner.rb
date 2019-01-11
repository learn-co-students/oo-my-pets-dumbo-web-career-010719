require 'pry'
class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []
  def initialize(name)
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @name = name
    @@all << self
  end
  def sell_pets
    @pets.each { |typeKey, arrVal|
      arrVal.each { |obj|
        obj.mood = "nervous"
      }
      arrVal.clear
    }
  end
  def list_pets
    fcount = @pets[:fishes].count
    dcount = @pets[:dogs].count
    ccount = @pets[:cats].count
    str = "I have #{fcount} fish, #{dcount} dog(s), and #{ccount} cat(s)."
  end
  def walk_dogs
    @pets[:dogs].each { |obj|
      obj.mood = "happy"
    }
  end
  def play_with_cats
    @pets[:cats].each { |obj|
      obj.mood = "happy"
    }
  end
  def feed_fish
    @pets[:fishes].each { |obj|
      obj.mood = "happy"
    }
  end
  def buy_cat(pet)
    kitty = Cat.new(pet)
    @pets[:cats] << kitty
  end
  def buy_dog(pet)
    doggy = Dog.new(pet)
    @pets[:dogs] << doggy
  end
  def buy_fish(pet)
    fishy = Fish.new(pet)
    @pets[:fishes] << fishy
  end
  def say_species
    "I am a #{self.species}."
  end
  def self.all
    @@all
  end
  def self.count
    @@all.count
  end
  def self.reset_all
    @@all.clear
  end
end
