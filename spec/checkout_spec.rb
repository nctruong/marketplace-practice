require 'spec_helper'

describe Checkout do

  include_context :testing_data

  describe '#scan' do
    it_behaves_like 'spending over £60'
    it_behaves_like 'lavender hearts'
    it_behaves_like 'spending over £60 and more than 1 lavender heart'
  end
end