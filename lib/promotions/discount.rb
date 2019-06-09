module Promotions
  module Discount
    class << self
      # If you spend over £60, then you get 10% off of your purchase.
      def discount_10_percent_if_over_60(items)
        total = calc_total(items)
        total > 60 ? total * 0.1 : 0
      end

      # If you buy 2 or more lavender hearts then the price drops to £8.50.
      def more_than_2_lavender_hearts_discount(items)
        count_lavenders = 0
        lavender_discount = 0
        items.each do |item|
          if item.lavender_heart?
            lavender_discount += item.price - 8.50 if item.price > 8.50
            count_lavenders += 1
          end
        end
        count_lavenders > 1 ? lavender_discount : 0
      end

      private

      def calc_total(items)
        items.sum { |i| i.price }
      end
    end
  end
end