require 'spec_helper'

describe Promotions::PromotionalRules do
  include_context :testing_data

  let(:items) { two_lavender_hearts + total_over_60 }

  before(:all) { @rules = Promotions::PromotionalRules }

  describe '#discount' do
    context 'when spending over £60' do
      it 'gets 10% off of the purchase' do
        dis = @rules.new(Promotions::TotalOverDiscount).discount total_over_60
        expect(dis).to eq(ten_percentage total_over_60)
      end
    end

    context 'when buying 2 or more lavender hearts' do
      it 'has price which drops to £8.50' do
        dis = @rules.new(Promotions::LavenderHeartDiscount).discount two_lavender_hearts
        expect(dis).to eq(lavender_discount two_lavender_hearts)
      end
    end

    context 'when spending over £60 &  more than 1 lavender hearts' do
      it 'gets 10% off & lavender price drops to £8.50' do
        dis = @rules.new(Promotions::TotalOverDiscount, Promotions::LavenderHeartDiscount).discount items
        expect(dis).to eq(ten_percentage(items) + lavender_discount(two_lavender_hearts))
      end
    end
  end
end

