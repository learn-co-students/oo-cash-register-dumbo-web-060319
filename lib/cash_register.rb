require "pry"

class CashRegister
    attr_accessor :total
    attr_reader :discount
    
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @cart = []
        @previous_total = 0
    end

    def add_item(title, price, quantity=1)
        @previous_total = @total 
        self.total = @total += price * quantity 
        quantity.times {@cart << title}
    end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else
            
            sum = @total * @discount / 100
            @total -= sum 
            return "After the discount, the total comes to $#{@total}."
            
        end
    end
    
    def items
        @cart 
    end

    def void_last_transaction
        @total = @previous_total
    end
    
    
end

# cr = CashRegister.new(100, 20)

# cr.apply_discount 
