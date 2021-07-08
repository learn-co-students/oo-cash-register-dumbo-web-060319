
class CashRegister
    attr_accessor :total, :discount, :all_items, :last_item_price

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @all_items = []
        @last_item_price = 0
    end

    def add_item(title, price, quantity = 1)
        quantity.times do @all_items << title end
        prices = []
        prices << price
        item_price = price * quantity
        @total = @total + item_price

        @last_item_price = prices[-1]
    end

    def apply_discount

        after_discount = @total

        if self.discount == 0
            "There is no discount to apply."
            
        elsif   @total != 0 && @discount != 0
            emp_discount = @total.to_f * (@discount.to_f / 100.00)
            after_discount = @total - emp_discount

            @total = after_discount.to_i
            "After the discount, the total comes to $#{@total}."   
        end
    end

    def items
        return self.all_items
    end 

    def void_last_transaction
        @total = @total.to_f - @last_item_price.to_f
    end

end





