require 'pry'

class CashRegister

  attr_accessor :total, :discount, :item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = []
    @prices = []
  end

  def add_item(title, price, quantity = 1)
    @total = self.total + (price*quantity)
    quantity.times{ @item << title }
    quantity.times{@prices << price}
  end

  def apply_discount
    if @discount > 0
      @total = @total - (@total*@discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @item
  end

  def void_last_transaction
    @total -= @prices.last
  end
end
