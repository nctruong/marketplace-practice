RSpec.shared_examples 'spending over £60' do
  context 'when spending over £60' do
    it 'gets 10% off of the purchase' do
      @co.scan(personalised_cufflinks)
      @co.scan(personalised_cufflinks)
      total = personalised_cufflinks[:price] * 2
      expect(@co.total).to eq(total - total * 0.1)
    end
  end
end

RSpec.shared_examples 'lavender hearts' do
  context 'when buying 2 or more lavender hearts' do
    it 'has price which drops to £8.50' do
      @co.scan(lavender_heart)
      @co.scan(lavender_heart)
      expect(@co.total).to eq(8.50 * 2)
    end
  end
end

RSpec.shared_examples 'spending over £60 and more than 1 lavender heart' do
  context 'when spending over £60 and buying 2 or more lavender hearts' do
    it 'has gets 10% off and lavender price drops to £8.50' do
      @co.scan(personalised_cufflinks)
      @co.scan(personalised_cufflinks)
      @co.scan(lavender_heart)
      @co.scan(lavender_heart)
      total = personalised_cufflinks[:price] * 2 + lavender_heart[:price] * 2
      discount = total * 0.1 + (lavender_heart[:price] - 8.50) * 2
      expect(@co.total).to eq(total - discount)
    end
  end
end