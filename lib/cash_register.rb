class CashRegister

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  attr_accessor :total, :discount, :items

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times{|q| @items.push(title)}
    @last_transaction = price * quantity
  end

def apply_discount
  if @discount == 0
    "There is no discount to apply."
  else
    @total -= @total * (@discount.to_f * 0.01)
    "After the discount, the total comes to $#{@total.to_i}."
  end
end


def void_last_transaction
  @total -= @last_transaction
end


end
