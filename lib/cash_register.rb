require "pry"

class CashRegister
    attr_reader :total, :discount, :cart

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @cart = []
    end

    # def add_total=(num)
    #     total += num
    # end


    def add_item(title, price, qty = 1)
        i = 0
        # binding.pry
        while i < qty
            cart << title
            @total += price
            i += 1
        end   
    end
    # binding.pry

    def apply_discount
        return "There is no discount to apply." if discount == 0
        @total = @total - @total * discount / 100.00
        "After the discount, the total comes to $#{Integer(total)}."
    end

    def items
        cart
    end

    def void_last_transaction

    end

    
end

chuck_e_cheese = CashRegister.new
# binding.pry

chuck_e_cheese.add_item("mango", 1.20, 5)