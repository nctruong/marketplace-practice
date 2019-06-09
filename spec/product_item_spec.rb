require 'spec_helper'

describe ProductItem, type: :model do
  let(:item) { ProductItem.new('001', 'Lavender heart', 99.15) }
  describe 'valid' do
    it 'is valid with code is present' do
      expect(item.code.nil?).to be(false)
    end
    it 'is valid with code is String' do
      expect(item.code.is_a? String).to be(true)
    end

    it 'is valid with name is present' do
      expect(item.name.nil?).to be(false)
    end
    it 'is valid with name is String' do
      expect(item.name.is_a? String).to be(true)
    end

    it 'is valid with price is present' do
      expect(item.price.nil?).to be(false)
    end
    it 'is valid with price is Float' do
      expect(item.price.is_a? Numeric).to be(true)
    end
  end

  describe 'invalid' do
    it 'lacks code' do
      expect(ProductItem.new(nil, 'Lavender', 100)).to raise('Code is mandatory')
    end
    it 'is invalid due to data type for code'
    it 'lacks name' do
      expect(ProductItem.new('001', nil, 100)).to raise('Name is mandatory')
    end
    it 'is invalid due to data type for name'
    it 'lacks price' do
      expect(ProductItem.new('001', 'Lavender')).to raise('Price is mandatory')
    end
    it 'is invalid due to data type for price'
  end
end