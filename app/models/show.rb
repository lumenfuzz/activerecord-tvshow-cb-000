require 'pry'
class Show < ActiveRecord::Base
  attr_accessor :season

  def highest_rating
    binding.pry
  end

end
