require 'restaurant'

describe Restaurant do

  subject(:restaurant) { described_class.new }
  # let(:menu_class) { double(:menu_class) }
  # let(:restaurant_dobule) { double(:menu_class) }
  #  let(:menu) { double(view:'yes') }

  xdescribe '#initialize' do
    context 'When initializing an instant of restaurant' do
      it 'Creates a new menu instance @menu' do
        #find out how to test injection of the new instance
      end
      it 'Creates a new menu instance @order' do
         #find out how to test injection of the new instance
      end
      it 'Creates a new menu instance @printer' do
         #find out how to test injection of the new instance
      end
    end
  end
  xdescribe '#output_menu' do
    context 'When printing menu' do
      it 'Return a list of dishes and prices' do
        allow(restaurant.printer).to receive(:output).and_return 'yes'
        expect(restaurant.ask_for_menu).to eq 'yes'
      end
    end
  end
  xdescribe '#select_food' do
    context 'When viewing menu' do
      it 'Return a list of dishes and prices' do
        # expect(restaurant_dobule.view_menu).to eq 'yes'
      end
    end
  end
  xdescribe '#place_order' do
    context 'When viewing menu' do
      it 'Return a list of dishes and prices' do
        # expect(restaurant_dobule.view_menu).to eq 'yes'
      end
    end
  end

end
