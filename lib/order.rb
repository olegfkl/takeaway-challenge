class Order
  attr_reader :basket
    def initialize
      @total = nil
      @basket = []
    end


  def cost
    #add statement if basket is empty then dont try to iterate
    sum = []
    strip = []
     @basket.each { |x| sum << x.values }
     strip = sum.transpose
    @total = strip[0].inject(:+).round(2)
  end
end
