
require 'pry'
class Owner
  # code goes here
   attr_accessor :cat, :dog, :fish, :pets
  @@all=[]
  @@count=0

  def initialize(species)
    @species=species
    @name=""
    @pets={
      :cats => [],
      :dogs => [],
      :fishes => []
    }
    @@all<<self
    @@count+=1
  end

  def self.all
      @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count=0
    @@all.clear
  end

  def species
    @species
  end

  def say_species
    "I am a #{species}."
  end

  def name=(name)
    @name=name
  end

  def name
    @name
  end

  def pets
    @pets
  end

  def buy_fish(fish_name)
    pets[:fishes]<<Fish.new(fish_name)
    # @@all<<self
  end
  
  def buy_cat(cat_name)
    pets[:cats]<<Cat.new(cat_name)
    # @@all<<self
  end

  def buy_dog(dog_name)
    pets[:dogs]<<Dog.new(dog_name)
    # @@all<<self
  end

  def walk_dogs
    for dog in pets[:dogs]
      dog.mood ="happy"
    end
  end
  
  def play_with_cats
    for cat in pets[:cats]
      cat.mood ="happy"
    end
  end

  def feed_fish
    for fish in pets[:fishes]
      fish.mood ="happy"
    end
  end

  def sell_pets
    all_pets=[]
    pets.each do |type, value|
        value.each do |pet|
          all_pets<<pet
        end
    end
    pets.clear 
    all_pets.each do |pet|
      pet.mood="nervous"
    end

  end

  def list_pets
    dog_count=0
    cat_count=0
    fish_count=0
    
    pets.each do |key, value|
        if key == :dogs
          dog_count=value.count
        elsif key == :cats
          cat_count=value.count
        elsif key == :fishes
          fish_count=value.count
        end
    end
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."

  end

end