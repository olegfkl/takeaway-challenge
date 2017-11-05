require 'printer'

describe Printer {described_class.new} do

  xdescribe '#output' do
    context 'When printing menu' do
      it 'Outputs the menu visually formatted' do
        allow(restaurant.printer).to receive(:output).and_return 'yes'
        expect(restaurant.ask_for_menu).to eq 'yes'
      end
    end
  end
  xdescribe '#options' do
    context 'When printing menu' do
      it 'Outputs the menu visually formatted' do
        allow(restaurant.printer).to receive(:output).and_return 'yes'
        expect(restaurant.ask_for_menu).to eq 'yes'
      end
    end
  end
end
