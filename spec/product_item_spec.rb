require 'spec_helper'

describe ProductItem, type: :model do
  let(:item) { ProductItem.new(code:'001', name:'Lavender heart', price:99.15) }
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
      expect{ ProductItem.new(name:'Lavender', price:100) }.to raise_error('Code is mandatory')
    end
    it 'is invalid due to data type for code' do
      expect{ ProductItem.new(code: 123, name:'Lavender', price:100) }.to raise_error('Code must be String')
    end
    it 'lacks name' do
      expect{ ProductItem.new(code:'001', price:100) }.to raise_error('Name is mandatory')
    end
    it 'is invalid due to data type for name' do
      expect{ ProductItem.new(code: '123', name: 123, price:100) }.to raise_error('Name must be String')
    end
    it 'lacks price' do
      expect{ ProductItem.new(code:'001', name:'Lavender') }.to raise_error('Price is mandatory')
    end
    it 'is invalid due to data type for price' do
      expect{ ProductItem.new(code: '123', name:'Lavender', price:'ninety') }.to raise_error('Price must be Numeric')
    end
  end
end