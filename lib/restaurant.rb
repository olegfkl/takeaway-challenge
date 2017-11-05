# Take away challange
require_relative 'menu'
require_relative 'order'

class Restaurant

  attr_reader :menu, :order

  def initialize( menu    = Menu.new ,
                  order   = Order.new
                )

    @menu       = menu
    @order      = order
  end

  def the_menu
      menu.list
  end

  def select_food
    select_engine
    order.cost
  end

  def place_order
    order.process
    order.confirmation
  end


  def view_basket
   order.basket
   order.cost
  end

  def last_order
    order.last
  end


private

  def select_engine
    client_selection = ''
    until client_selection == 'x'
      order.basket
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
          puts "Try agaon with numbers within range and no letters"
      end
    end
  end
end
