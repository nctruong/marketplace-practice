class ProductItem
  attr_reader :code, :name, :price
  ITEMS = {
      lavender_heart: 'lavender heart'
  }

  def initialize(params = {})
    validate_attr(params)
    @code = params[:code]
    @name = params[:name]
    @price = params[:price]
  end

  def lavender_heart?
    name.downcase == ITEMS[:lavender_heart].downcase
  end

  private

  def validate_attr(params)
    [:code, :name, :price].each do |attr|
      raise "#{attr.capitalize} is mandatory" if params[attr].nil?
    end
  end
end