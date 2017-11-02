require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end


  def total
    @total
  end

  def add_item(title,price, quantity = 1)

    quantity.times do
      @items << title
    end
    if quantity == 0
      self.total += price
    else
      self.total += price * quantity
    end
    @last = price * quantity

  end

  def apply_discount

    if @discount > 0
      @discount = self.discount * 0.01
      self.total = self.total - (self.total*discount)

      total = self.total.to_i
      return "After the discount, the total comes to $#{total}."

    else
      return "There is no discount to apply."
    end

  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last
  end

end
