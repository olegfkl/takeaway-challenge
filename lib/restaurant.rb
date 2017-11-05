# Take away challange
require_relative 'menu'
require_relative 'order'
require_relative 'display'

class Restaurant

  attr_reader :menu, :order, :display

  def initialize( menu    = Menu.new ,
                  order   = Order.new,
                  display = Display.new
                )

    @display    = display
    @menu       = menu
    @order      = order
    @orders_log = []
  end

  def the_menu
      display.menus(menu.list)
  end

  def select_food
    display.select_instruction
    display.options(menu.list)
    select_engine
    display.total(order.cost)
  end

  def place_order
    order.process
    order.complete
  end

  def view_basket
   display.wish_list(order.basket)
   display.total(order.cost)
  end


private

  def select_engine
    client_selection = ''
    until client_selection == 'x'
      display.wish_list(order.basket)
      client_selection = gets.chomp
      case client_selection
        when "1"
          order.basket << menu.list[0]
        when "2"
          order.basket << menu.list[1]
        when "3"
          order.basket << menu.list[2]
        when "4"
          order.basket << menu.list[3]
        when "5"
          order.basket << menu.list[4]
        when "6"
          order.basket << menu.list[5]
        when "x"
          client_selection = 'x'
        else
          display.error
      end
    end
  end
end
