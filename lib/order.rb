require 'csv'
require_relative 'display'
class Order

  @@orders_log = []

  attr_reader :basket, :total, :address, :display

    def initialize(display = Display.new)
      @displa = display
      @total = nil
      @basket = []
      @address = nil
    end

  def self.all_orders
    @@orders_log
  end

  def cost
    if @basket.length.zero?
      puts "Your basket is empty"
    else
       sum = []
       strip = []
       @basket.each { |x| sum << x.values }
       strip = sum.transpose
       @total = strip[0].inject(:+).round(2)
    end
  end

  def process
    all_addresses = []
    filename = "addresses.csv"
    if File.exists?(filename)
      CSV.foreach(filename , "r") do |line|
      all_addresses << line
      end
      @address = all_addresses.sample
      @@orders_log << self
    else
      display.address_error
    end
  end

  def complete
  end

end
