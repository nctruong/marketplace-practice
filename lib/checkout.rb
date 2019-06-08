class Checkout
  attr_reader :items
  attr_accessor :total, :discount

  def initialize(promotional_rules)
    @promotional_rules = promotional_rules
    @total = 0
    @discount = 0
    @items = []
  end

  def scan(item)
    adding_item(item)
    @total = total_after_discount
  end

  private

  def adding_item(item)
    @items << item
    update_total(item)
    update_discount
  end

  def update_total(item)
    @total += item[:price]
  end

  def update_discount
    # If you spend over £60, then you get 10% off of your purchase
    @discount = total * 0.1 if total > 60

    # If you buy 2 or more lavender hearts then the price drops to £8.50
    count_lavenders = 0
    lavender_discount = 0
    @items.each do |item|
      if item[:name].downcase == 'lavender heart'
        lavender_discount += item[:price] - 8.50 if item[:price] > 8.50
        count_lavenders += 1
      end
    end
    @discount += lavender_discount if count_lavenders > 1
  end

  def total_after_discount
    total - discount
  end
end