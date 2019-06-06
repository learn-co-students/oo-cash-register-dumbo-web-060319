require 'pry'
class CashRegister
  def initialize (discount = 0.00)
  	@total = 0
  	@discount = discount
  	@items = []
  	@last_transaction = 0
  end

  def cash_register_with_discount
  	@total * @dsicount
  end

  attr_accessor :total
  attr_reader  :discount, :items

  def add_item (title, price, quantity = 1)
  	i = 1
  	while i <= quantity
  	  @items << title
  	  i += 1
  	end
  	@last_transaction = price * quantity
  	@total += @last_transaction
  end

  def apply_discount
  	if @discount > 0.00
  	  @total = @total - (@total * @discount) / 100
  	  return "After the discount, the total comes to $#{@total}."
  	else
      return "There is no discount to apply."
    end
  end
  def void_last_transaction 
  	@total -= @last_transaction
  end
end

