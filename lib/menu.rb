class Menu
  attr_reader :list
  def initialize
    @list = {[:Food]=>
             {"Kebab"         => 4.40 ,
              "Fish and chips"=> 5.70 ,
              "Jacket Potato" => 5.00 ,
              "Mash Potato"   => 6.60 ,
              "Pizza"         => 7.10 ,
              "Pasta"         => 5.75
              },
              [:Drinks]=>
              {"Water 1 Lit." => 1.40 ,
              "Coca-cola"     => 1.70 ,
              "Fanta"         => 1.70 ,
              "Sprite"        => 1.70 ,
              "Orange Juice"  => 2.10 ,
              "Ginger beer"   => 2.00
              },
              [:Deserts]=>
              {"Ice scream"   => 4.40 ,
              "Chocolate bar" => 5.70 ,
              "Strawberries"  => 5.00 ,
              "Fruit Salad"   => 6.60
               }}
  end
# def view
#   print_menu
# end
end
