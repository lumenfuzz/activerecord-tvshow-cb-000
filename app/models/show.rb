class Show < ActiveRecord::Base
  attr_accessor :season

  def self.highest_rating
    self.maximum("rating")
  end

  def self.most_popular_show
    rating = Show.highest_rating
    show = Show.find_by(rating: rating)
    return show.title
  end

end
