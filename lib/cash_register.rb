
class CashRegister 
  attr_accessor :total, :discount, :quantity, :items, :last_transaction
  
  def initialize(discount=0)
    @total = 0
    @discount = discount 
    @items = []
    @last_transaction = 0
  end 
  
  def add_item(title, price, quantity = 0 )
    if quantity == 0 
      @total = @total + price 
      @last_transaction = price
      @items.push(title)
    else 
      wait = price * quantity 
      @last_transaction = wait
      @total = @total + wait 
      count = 0 
      while (count < quantity)
        @items.push(title)
        count = count + 1 
      end 
    end 
  end
  
  def apply_discount 
    if @discount > 0
      x = @discount /100.0
      newDiscount = total * x
      @total = @total - newDiscount
      return "After the discount, the total comes to $#{@total.to_i}."
    else 
      return "There is no discount to apply."
    end 
  end 
  
  def items 
    return @items 
  end 
  def void_last_transaction
    @total = @total - @last_transaction
  end 
end 