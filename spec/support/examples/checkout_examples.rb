RSpec.shared_example 'spending over £60' do
  context 'when spending over £60' do
    it 'gets 10% off of the purchase' do
      @co.scan(personalised_cufflinks)
      @co.scan(personalised_cufflinks)
      total = personalised_cufflinks[:price] * 2
      expect(@co.total).to eq(total - total * 0.1)
    end
  end
end

RSpec.shared_example 'lavender hearts' do
  context 'when buying 2 or more lavender hearts' do
    it 'has price which drops to £8.50' do
      @co.scan(lavender_heart)
      @co.scan(lavender_heart)
      expect(@co.total).to eq(8.50 * 2)
    end
  end
end