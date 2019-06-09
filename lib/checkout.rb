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
    @discount = promotional_rules.new(@items).discount
    adding_item(item)
    @total = total_after_discount
  end

  private

  def adding_item(item)
    @items << item
    reset_total
    reset_discount
  end

  def reset_total
    @total = items.collect { |i| i.price }.inject(:+)
  end

  def reset_discount
    # If you spend over £60, then you get 10% off of your purchase
    @discount = discount_10_per_if_over_60
    @discount += more_than_2_lavender_hearts_discount
  end

  def discount_10_per_if_over_60
    total > 60 ? total * 0.1 : 0
  end

  def more_than_2_lavender_hearts_discount
    # If you buy 2 or more lavender hearts then the price drops to £8.50
    count_lavenders = 0
    lavender_discount = 0
    @items.each do |item|
      if item[:name].downcase == 'lavender heart'
        lavender_discount += item.price - 8.50 if item.price > 8.50
        count_lavenders += 1
      end
    end
    count_lavenders > 1 ? lavender_discount : 0
  end

  def total_after_discount
    total - discount
  end
end