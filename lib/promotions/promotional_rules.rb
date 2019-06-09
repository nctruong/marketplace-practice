module Promotions
  class PromotionalRules

    def initialize(*discounts)
      @discounts = discounts
    end

    def discount(items)
      @discounts.collect { |rule| rule.discount(items) }.sum
    end
  end
end