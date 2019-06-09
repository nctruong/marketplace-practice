module Promotions
  module ExpectedOutput
    def calc_total(items)
      items.sum { |i| i.price }
    end

    def ten_percentage(items)
      calc_total(items) * 0.1
    end

    def lavender_discount(lavenders)
      lavenders.collect { |i| i.price - 8.50 }.sum
    end
  end
end