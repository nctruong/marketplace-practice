require 'spec_helper'

describe Checkout do

  let(:lavender_heart) {
    { code: '001', name: 'Lavender heart', price: 9.25 }
  }
  let(:personalised_cufflinks) {
    { code: '002', name: 'Personalised cufflinks', price: 45.00 }
  }
  let(:kids_t_shirt) {
    { code: '003', name: 'Kids T-shirt', price: 19.95 }
  }

  before(:each) do
    @co = Checkout.new(PromotionalRules)
  end

  describe '#scan' do
    context 'when spending over £60' do
      it 'gets 10% off of the purchase' do
        @co.scan(personalised_cufflinks)
        @co.scan(personalised_cufflinks)
        total = personalised_cufflinks[:price] * 2
        expect(@co.total).to eq(total - total * 0.1)
      end
    end

    context 'when buying 2 or more lavender hearts' do
      it 'has price which drops to £8.50' do
        @co.scan(lavender_heart)
        @co.scan(lavender_heart)
        expect(@co.total).to eq(8.50 * 2)
      end
    end
  end
end