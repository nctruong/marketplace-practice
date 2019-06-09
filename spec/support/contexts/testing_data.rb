RSpec.shared_context :testing_data do
  let(:lavender_heart) {
    ProductItem.new('001', 'Lavender heart', 9.25)
  }
  let(:personalised_cufflinks) {
    ProductItem.new('002', 'Personalised cufflinks', 45.00)
  }
  let(:kids_t_shirt) {
    ProductItem.new('003', 'Kids T-shirt', 19.95)
  }
  let(:two_lavender_hearts) {
    [ lavender_heart, lavender_heart ]
  }
  let(:total_over_60) {
    [ personalised_cufflinks, personalised_cufflinks ]
  }
end