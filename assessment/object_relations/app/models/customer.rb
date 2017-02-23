class Customer
  @@all = []
  attr_accessor :name, :reviews

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find {|customer| customer.name == name}
  end

  def add_review(review, restaurant)
    new_review = Review.new(review)
    new_review.restaurant = restaurant
    new_review.customer = self
    @reviews << new_review
    restaurant.reviews << new_review
  end
end


# Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied ot the restaurant, and tied to the customer
