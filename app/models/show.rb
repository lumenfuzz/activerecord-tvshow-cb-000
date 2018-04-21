class Show < ActiveRecord::Base
  attr_accessor :season

  def self.highest_rating
    self.maximum("rating")
  end

end
