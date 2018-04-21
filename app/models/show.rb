require 'pry'
class Show < ActiveRecord::Base
  attr_accessor :season
  binding.pry

  def highest_rating
    binding.pry
  end

end
