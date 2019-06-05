
class CashRegister
    attr_reader :discount
    attr_accessor :total
    def initialize(discount=0)
        @total=0
        @discount = discount
        @previous_total=0
        @arr=[]
    end

    def add_item(name,price,num=1)
        num.times{ @arr << name}
        @previous_total=@total
        @total+=price*num
    end

    def apply_discount
        if @discount != 0
        @total=@total*(100-@discount)/100
        "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @arr
    end

    def void_last_transaction
        
        @total=@previous_total
    end
end
