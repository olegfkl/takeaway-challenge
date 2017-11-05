require 'menu'

describe Menu do

  subject(:menu) { described_class.new }

  describe '#initialize' do
    context 'When initializing an instant of Menu' do
      it 'Creates a new instance variable @list' do
        expect(menu).to respond_to(:list)
      end
    end
  end
end
