class Printer
  def initialize
  end

  def output(arg)
    arg.each do |k, v|
      puts ''
      puts "--------------------"
      puts "#{k[0].upcase}:"
      puts "--------------------"
      puts ''
        v.each do |d, y|
      puts "| #{d}: £#{y}"
    end
    end
    end
end
