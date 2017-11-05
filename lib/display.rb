class Display

  attr_reader :basket

  def initialize
  end

  # The method dispays menu and basket to the user
  def menus(menu_list)
    puts "--------------------"
    puts "MENU"
    puts "--------------------"
    menu_list.each do |hash|
      hash.each do |key, value|
        puts "| #{key}: #{value}"
      end
    end
  end

  # The method dispays menu with number options for selections
  def options(menu_list)
    puts "--------------------"
    puts "MENU"
    puts "--------------------"
    counter = 1
    menu_list.each do |hash|
      hash.each do |key, value|
        puts "| #{counter}. #{key}"
        counter += 1
      end
    end
  end

  def wish_list(menu_list)
    puts "--------------------"
    puts "BASKET:#{menu_list.length}"
    puts "--------------------"
    menu_list.each do |hash|
      hash.each do |key, value|
        puts "| #{key}: #{value}"
      end
    end
  end

  def select_instruction
    puts "|"
    puts "| Please make your selection."
    puts "| Type food number and hit enter to add it to your basket"
    puts "| Type x when you are happy with items in your basket"
    puts "|"
  end

  def error
    puts "| Please provide number within range and don't include letters"
  end
  def total(cost)
    puts "| Total to pay: £#{cost}"
  end
end
