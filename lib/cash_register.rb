class CashRegister 
  attr_accessor :total
  attr_reader :discount, :previous_total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @previous_total = 0 
  end
  
  def add_item(title, price, quantity = 1)
    # @total += price
    @previous_total = @total  
    quantity.times { @items << title }
    @total += price * quantity
  end
  
  def items 
    @items
  end
  
  def apply_discount 
    if @discount != 0 
      @total=@total*(100-@discount)/100
        "After the discount, the total comes to $#{@total}."
      else
        "There is no discount to apply."
      end
  end
  
  def void_last_transaction
    @total=@previous_total
  end
  
  
end
