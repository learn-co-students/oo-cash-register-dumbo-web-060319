require 'pry'

class CashRegister

    attr_accessor :total, :discount
    
    def initialize(discount= nil)
        @total = 0
        @discount = discount
        @items = []
        @previous_total = 0
    end 

    def add_item(item, price, quantity = 1)
        # @transactions = {}
        @previous_total = @total
        @total += price * quantity
        # @items << item
        @items.concat([item] * quantity)
        # accepts a title and a price and increases the total (FAILED - 4)
        # also accepts an optional quantity (FAILED - 5)
        # doesn't forget about the previous total (FAILED - 6)
        # @transactions[item] = {}
        # @transactions[item][:price] = price
        # @transcations[item][:quantity] = quantity
    end

    def apply_discount
        @total = @total - ((@total * @discount.to_f) / 100)
        if @discount == 0 || @discount == nil  
            return "There is no discount to apply."
        else 
            return "After the discount, the total comes to $#{@total.to_i}."
        end 
        #   returns a string error message that there is no discount to apply (FAILED - 10)
    end 

    def items
        @items
        # returns an array containing all items that have been added (FAILED - 11)
    end

    def void_last_transaction
        @items.pop
        @total = @previous_total
        #  subtracts the last transaction from the total (FAILED - 12)
    end

end
