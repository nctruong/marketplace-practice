# require 'spec_helper'
#
# describe Promotions::PromotionalRules do
#   include_context :testing_data
#
#   let(:items) { two_lavender_hearts + total_over_60 }
#
#   let(:discounts) {
#     [ Promotions::TotalOverDiscount, Promotions::LavenderHeartDiscount ]
#   }
#
#   let(:expected_10dis) { ten_percentage total_over_60 }
#   let(:expected_lavender_dis) { lavender_discount two_lavender_hearts }
#
#   before(:each) do
#     @rules = Promotions::PromotionalRules
#   end
#
#   describe '#discount' do
#     context 'when spending over £60' do
#       it 'gets 10% off of the purchase' do
#         dis = @rules.new(total_over_60, [Promotions::TotalOverDiscount]).discount
#         expect(dis).to eq(expected_10dis)
#       end
#     end
#
#     context 'when buying 2 or more lavender hearts' do
#       it 'has price which drops to £8.50' do
#         dis = @rules.new(two_lavender_hearts, [Promotions::LavenderHeartDiscount]).discount
#         expect(dis).to eq(expected_lavender_dis)
#       end
#     end
#
#     context 'when spending over £60 &  more than 1 lavender hearts' do
#       it 'gets 10% off & lavender price drops to £8.50' do
#         dis = @rules.new(items, discounts).discount
#         expect(dis).to eq(expected_10dis + expected_lavender_dis)
#       end
#     end
#   end
# end
#
