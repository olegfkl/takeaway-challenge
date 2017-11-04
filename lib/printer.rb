class Printer
  attr_reader :basket
  def initialize
  end

  def output(arg)
    puts "--------------------"
    puts "MENU"
    puts "--------------------"
    arg.each do |k, v|
      puts "| #{k}: £#{v}"
    end
  end
end
