require 'twilio-ruby'
require 'csv'

class Order

  @@orders_log = []

  attr_reader :basket, :total, :address

    def initialize
      @total = nil
      @basket = []
      @address = nil
    end

  def last
    self
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
    # Mocking to add delivery address to the order
    all_addresses = []
    filename = "addresses.csv"
    if File.exists?(filename)
      CSV.foreach(filename , "r") do |line|
      all_addresses << line
      end
      @address = all_addresses.sample
      @@orders_log << self
    else
      raise "We coudn't locate address database"
    end
  end

    def confirmation
      client = Twilio::REST::Client.new(
        'AC240baaa883317240294420ee69e16abf',
        '7095d05339b1d2ddd1b2e7a29c3a9b2d'
      )
        client.messages.create(
        from: '+441325952018',
        to: '+447809218597',
        body: "Thank you! Your order was placed and will be delivered before 18:52"
      )
      puts "Thank you for your order! You should receive a text message confirming your order"
    end
  end
