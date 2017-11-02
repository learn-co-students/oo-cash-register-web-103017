class CashRegister
  attr_accessor :total, :discount, :lastitem
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @lastitem = 0
  end
  #def discount
  #  return 20
#  end

  def add_item(title, price, quantity = 0)
    @lastitem = price
    if quantity > 0
      quantity.times do
        @total += price
        items << title
      end
    else
      items << title
      @total += price
    end
  end

  def apply_discount
    if discount > 0
      amount_off = (@total * discount) / 100
       @total -= amount_off
      "After the discount, the total comes to $#{@total}."
    else
       "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= lastitem
  end

  def items
    @items
  end


end
