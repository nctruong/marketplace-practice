require 'spec_helper'

describe Promotions::LavenderHeartDiscount do
  include_context :testing_data

  let(:items) { two_lavender_hearts }

  before(:each) do
    @promotion = Promotions::LavenderHeartDiscount
  end

  describe '::discount' do
    context 'when buying 2 or more lavender hearts' do
      it 'has price which drops to £8.50' do
        expect(@promotion.discount items).to eq(lavender_discount two_lavender_hearts)
      end
    end
  end
end
