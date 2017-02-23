class Review
  attr_accessor :review, :restaurant, :customer
  @@all = []

  def initialize(review)
    @review = review
    @@all << self
  end

  def self.all
    @@all
  end
end
