require_relative "restaurant"
require_relative "order"


class Guide
  attr_reader :restaurant
  def initialize(restaurant = Restaurant.new)
    @restaurant = restaurant
  end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_menu
  puts " -------------------------------------------"
  puts "|  1. Show restaurant menu"
  puts "|  2. Select food you would like to order"
  puts "|  3. View basket"
  puts "|  4. Place order"
  puts "|  5. View receipt"
  puts "|  9. Exit"
  puts " -------------------------------------------"
end

def process(selection)
  case selection
    when "1"
      restaurant.the_menu
    when "2"
      restaurant.select_food
    when "3"
      restaurant.view_basket
    when "4"
      restaurant.place_order
    when "5"
      restaurant.order.last
    when "9"
      exit
    else
      puts "|  I don't know what you mean, try again"
  end
end

def print_header
puts"--------TAKE AWAY RESTAURANT------------"
puts"  _________ "
puts" r==           |       |"
puts" _  //            |  M.A. |   ))))"
puts" |_)//(''''':      |       |"
puts" //  \_____:_____.-------D     )))))"
puts" //   | ===  |   /        \""
puts" .:'//.   \ \=|   \ /  .:'':./    )))))"
puts" :' // ':   \ \ ''..'--:'-.. ':"
puts" '. '' .'    \:.....:--'.-'' .'"
puts" ':..:'                ':..:'"
puts"Welcome to our online take away restaurant! Enjoy"
end
end
guide = Guide.new
guide.print_header
guide.interactive_menu
