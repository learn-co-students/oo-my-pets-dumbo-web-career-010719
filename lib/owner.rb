class Owner
  
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets ={
      :cats => [],
      :dogs => [],
      :fishes => []
    }
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each { |dog|
      dog.mood = "happy"
    }
  end

  def play_with_cats
    self.pets[:cats].each { |cat|
      cat.mood = "happy"
    }
  end

  def feed_fish
    self.pets[:fishes].each { |fish|
      fish.mood = "happy"
    }
  end

  def sell_pets
    self.pets.each { |pet, arr|
      arr.each { |who|
        who.mood = "nervous"
      }
      arr.clear
    }
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end
end