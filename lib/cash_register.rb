require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do
      @items << title
    end
    @last = (price * quantity)
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      @total = (@total * (1 - (@discount/100.0))).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last
  end
end
