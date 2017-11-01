
require "pry"

class CashRegister
  attr_reader :discount, :total, :items

  def initialize(discount=0.0)
    @total = 0.0
    @discount = discount.to_f
    @items = []
    @discount_total = 0
    @transactions = []
  end



  def total=(amount)
    @total += amount
  end

  def items=(item)
    @items << item
  end

  def add_item(item,price,quantity=1)
    trans_total = 0.0
    quantity.times do
      self.total=(price)
      self.items=(item)
      trans_total += price
    end
    @transactions << trans_total
  end

  def total_discount(discount,total)
    discount.to_f/100.0*total.to_f
    # binding.pry
  end

  def apply_discount
    if @discount.to_i == 0
      return "There is no discount to apply."
    else
      @total -= total_discount(@discount,@total)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total -= @transactions[-1]
    @transactions.delete(@transactions[-1])
  end


end


