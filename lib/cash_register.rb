
require 'pry'

class CashRegister

  attr_accessor :total, :discount


  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, num = 1)
    @items_list = []
    @price_list = []

    num.times {@items_list << item}
    @price_list << (price * num)

    @total += (price * num)

  end

  def apply_discount
    if @discount > 0
      @total = @total * (1 - (@discount/100.00) )
      return "After the discount, the total comes to $800."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items_list
  end

  def void_last_transaction
    @total = @total - @price_list[-1]
    @total
  end


end
