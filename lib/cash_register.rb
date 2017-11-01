require 'pry'

class CashRegister

  def initialize(discount_input = 0)
    @all_items = []
    @total = 0
    @discount = discount_input
  end

  attr_reader :discount
  attr_accessor :total

  def add_item(item_input, price_input, quantity_input = 1)
    @item = item_input
    @price = price_input
    @quantity = quantity_input

    @last_price = @price
    @last_quantity = @quantity

    @total += @price * @quantity
    quantity_input.times do
      @all_items << @item
    end
  end

  def apply_discount
    # binding.pry
    @total = @total * (1 - (@discount / 100.0))
    if discount > 0
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @all_items
  end

  def void_last_transaction
    @total -= @last_price * @last_quantity
  end

  # binding.pry

end
