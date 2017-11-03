
require_relative './menu.rb'
require_relative './order.rb'

class Restaurant
attr_reader :menu , :order
  def initialize( menu = Menu.new , order = Order.new)
    @menu = menu
    @order = order
  end

  def view_menu
      menu.food
  end

  def select_food
  end

  def place_order
  end

end
