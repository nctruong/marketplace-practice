require 'spec_helper'

describe Checkout do

  include_context :testing_data

  before(:each) do
    @co = Checkout.new(PromotionalRules)
  end

  describe '#scan' do
    it_behaves_like 'spending over £60'
    it_behaves_like 'lavender hearts'
  end
end