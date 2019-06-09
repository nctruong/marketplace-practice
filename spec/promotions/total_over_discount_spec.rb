# require 'spec_helper'
#
# describe Promotions::TotalOverDiscount do
#   include_context :testing_data
#
#   let(:items) { total_over_60 }
#
#   before(:each) do
#     @promotion = Promotions::TotalOverDiscount
#   end
#
#   describe '::discount' do
#     context 'when spending over £60' do
#       it 'gets 10% off of the purchase' do
#         expect(@promotion.discount items).to eq(ten_percentage total_over_60)
#       end
#     end
#   end
# end