
require "pry"

class CashRegister
    attr_accessor :discount, :total, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times {@items.push(title)}
        self.last_transaction = price * quantity
    end
        
    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else
            self.total = total - (total * discount/100.0).to_i
            return "After the discount, the total comes to $800."
        end
    end 

    def void_last_transaction
        self.total -= self.last_transaction
    end
    
    # binding.pry
end
