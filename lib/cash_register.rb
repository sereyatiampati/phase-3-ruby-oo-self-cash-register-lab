require 'pry'
class CashRegister
    attr_accessor :total, :quantity
    attr_reader :discount

    def initialize(discount=0, total = 0)
        @total=total
        @discount=discount
    end

    def add_item(title, price, quantity=0)
        self.total += price
    end

    def apply_discount
        total = total - total * self.discount/100
        "Discounted"
        total
    end
end
#binding.pry