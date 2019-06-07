class CashRegister
  attr_accessor :discount, :total, :last_amount

  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end

  ITEMS = []

  def last_amount
    @last_amount
  end

  def add_item(title, price, quantity = 0)
    if quantity > 1
      quantity.times do
        ITEMS << title
      end
      @total += (price * quantity)
      @last_amount = (price * quantity)
    else
      ITEMS << title
      @total += price
      @last_amount = price
    end
  end

  def apply_discount
    if (self.discount == 0)
      "There is no discount to apply."
    else
      self.total = (self.total * (1 - (self.discount / 100.0))).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    ITEMS
  end

  def void_last_transaction
    puts self.total - @last_amount
    self.total = self.total - @last_amount
  end
end