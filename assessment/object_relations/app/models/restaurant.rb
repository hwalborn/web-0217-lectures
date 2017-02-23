class Restaurant
  attr_accessor :name, :reviews
  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
  end

  def customers
    @reviews.map do |review|
      review.customer
    end
  end

  def self.find_by_name(name)
    @@all.find {|restaurant| restaurant.name == name}
  end

  def self.all
    @@all
  end
end
