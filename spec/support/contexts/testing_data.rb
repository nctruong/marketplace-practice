RSpec.shared_context :testing_data do
  let(:lavender_heart) {
    { code: '001', name: 'Lavender heart', price: 9.25 }
  }
  let(:personalised_cufflinks) {
    { code: '002', name: 'Personalised cufflinks', price: 45.00 }
  }
  let(:kids_t_shirt) {
    { code: '003', name: 'Kids T-shirt', price: 19.95 }
  }
  let(:two_lavender_hearts) {
    [ lavender_heart, lavender_heart ]
  }
  let(:total_over_60) {
    [ personalised_cufflinks, personalised_cufflinks ]
  }
end