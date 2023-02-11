require 'pry'
class CashRegister
    attr_accessor :total, :quantity 
    attr_reader :discount, :price, :title

    def initialize(discount=0, total = 0)
        @total=total
        @discount=discount
    end

    def add_item(title, price, quantity=1)
        self.total =self.total + price * quantity
    end

    def apply_discount
        if self.discount > 0
            self.total = self.total - self.total * self.discount/100
            self.total
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end
    def items
        self.add_item
        binding.pry
        array= []
        # if item3 == 0
        #     array << item1
        #     array << item2
        # else
        #     array << item1
        #     array << item2
        #     array << item3
        # end
    end
end
binding.pry
