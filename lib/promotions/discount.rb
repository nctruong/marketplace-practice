module Promotions
  module Discount
    class << self
      def discount_10_percent_if_over_60(items)
        total = calc_total(items)
        total > 60 ? total * 0.1 : 0
      end

      private

      def calc_total(items)
        items.sum { |i| i.price }
      end

      def ten_percentage(items)
        calc_total(items) * 0.1
      end
    end
  end
end