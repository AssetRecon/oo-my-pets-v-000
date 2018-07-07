class Owner
attr_accessor :name, :pets
attr_reader :species
@@all = []

  def initialize(name)
    @@all << self
    @species = "human"
    @pets = {fishes: [],
              dogs: [],
              cats: []
            }
  end

  def self.all
    @@all
  end

  def self.reset_all
      @@all.clear
  end

  def self.count
    self.all.length
  end

  def species
    @species
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
  new_fish = Fish.new(name)
  self.@pets[fishes] << new_fish
  end



end
