# Take away challange
require_relative 'menu'
require_relative 'order'
require_relative 'printer'

class Restaurant
attr_reader :menu , :order , :printer
  def initialize( menu = Menu.new , order = Order.new, printer = Printer.new)
    @printer = printer
    @menu    = menu
    @order   = order
  end

  def output_menu
      printer.output(menu.list)
  end

  def select_food
    menu.list
  end

  def place_order
  end

end
