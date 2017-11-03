require_relative './restaurant.rb'
class Menu
  attr_reader :food
  def initialize
    @food = { "Kebab"         => 4.40 ,
              "Fish and chips"=> 5.70 ,
              "Jacket Potato" => 5.00 ,
              "Mash Potato"   => 6.60 ,
              "Pizza"         => 7.10 ,
              "Pasta"         => 5.75
            }
  end
end
