class Checkout
  attr_reader :items, :total, :discount

  def initialize(promotional_rules = nil)
    @promotional_rules = promotional_rules
    @discount = 0 if promotional_rules.nil?
    @total = 0
    @items = []
  end

  def scan(item)
    adding_item(item)
    set_final_total_discount
  end

  private

  def set_final_total_discount
    unless @promotional_rules.nil?
      @discount = @promotional_rules.discount @items
      @total = total_after_discount
    else
      @total = actual_total
    end
  end

  def adding_item(item)
    @items << item
  end

  def actual_total
    items.sum { |i| i.price }
  end

  def total_after_discount
    actual_total - discount
  end
end