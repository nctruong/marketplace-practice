module Promotions
  class TotalOverDiscount
    def self.discount(items)
      Promotions::Discount.discount_10_percent_if_over_60(items)
    end
  end
end