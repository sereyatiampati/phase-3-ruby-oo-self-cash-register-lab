require 'pry'
class CashRegister
    attr_accessor :total, :quantity, :items, :price
    attr_reader :discount, :title

    def initialize(discount=0, total = 0)
        @total = total
        @discount=discount
        @items = Array.new
    end

    def add_item(title, price, quantity=1)
        @price =price * quantity
        1.upto(quantity) { |i| @items << title}
        self.total += self.price
    end

    def apply_discount
        if self.discount > 0
            self.total -= (self.total * self.discount/100)
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
            self.total -= self.price
    end

end
#binding.pry
