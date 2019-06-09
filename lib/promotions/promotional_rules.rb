module Promotions
  class PromotionalRules

    def initialize(items, discounts = [])
      @items = items
      @discounts = discounts
    end

    def discount
      @discounts.collect { |rule| rule.discount(@items) }.sum
    end
  end
end