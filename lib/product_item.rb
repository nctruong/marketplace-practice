class ProductItem < Struct.new(:code, :name, :price)
  ITEMS = {
      lavender_heart: 'lavender heart'
  }

  def lavender_heart?
    name.downcase == ITEMS[:lavender_heart].downcase
  end
end