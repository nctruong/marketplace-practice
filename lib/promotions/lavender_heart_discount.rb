module Promotions
  class LavenderHeartDiscount
    def self.discount(items)
      Promotions::Discount.more_than_2_lavender_hearts_discount(items)
    end
  end
end