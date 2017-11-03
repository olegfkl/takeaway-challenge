require 'menu'

describe Menu do
  subject(:menu) { described_class.new }
  # let(:menu_class) { double(:menu_class) }
  # let(:restaurant_dobule) { double(:menu_class) }
  #  let(:menu) { double(view:'yes') }

  describe '#initialize' do
    context 'When initializing an instant of menu' do
      it 'Creates a new instance variable @food with 6 dishes' do
        expect(menu.food.length).to eq 6
      end
    end
  end
  xdescribe '#view_menu' do
    context 'When viewing menu' do
      it 'Return a list of dishes and prices' do
        allow(restaurant.menu).to receive(:view).and_return 'yes'
        expect(restaurant.view_menu).to eq 'yes'
      end
    end
  end





end
