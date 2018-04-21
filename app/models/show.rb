class Show < ActiveRecord::Base
  attr_accessor :season

  def self.highest_rating
    self.maximum("rating")
  end

  def self.most_popular_show
    rating = Show.highest_rating
    Show.find_by(rating: rating)
  end

  def self.lowest_rating
    self.minimum("rating")
  end

  def self.least_popular_show
    rating = Show.lowest_rating
    Show.find_by(rating: rating)
  end

  def self.ratings_sum
    sum = 0
    Show.all.each do |show|
      sum += show.rating
    end
    sum
  end

  def self.popular_shows
    Show.where("rating > 5")
  end

end
