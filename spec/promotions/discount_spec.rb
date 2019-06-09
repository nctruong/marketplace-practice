require 'spec_helper'

describe Promotions::Discount do
  include_context :testing_data

  before(:all) do
    @discount = ::Promotions::Discount
  end

  describe '::discount_10_percent_if_over_60' do
    context 'when spending over £60' do
      it 'gets 10% off of the purchase' do
        expect(@discount.discount_10_percent_if_over_60(total_over_60)).to eq(ten_percentage total_over_60)
      end
    end
  end

  describe '::more_than_2_lavender_hearts_discount' do
    context 'when buying 2 or more lavender hearts' do
      it 'has price which drops to £8.50' do
        expect(@discount.more_than_2_lavender_hearts_discount(two_lavender_hearts)).to eq(lavender_discount two_lavender_hearts)
      end
    end
  end
end