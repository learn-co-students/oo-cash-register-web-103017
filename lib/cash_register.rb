class CashRegister

  attr_accessor :total, :discount
  # attr_reader :discount

  def initialize(discount = 0) # add total in argument?
    @total = 0
    @discount = discount
    @item = []
    @price = []
  end


  def add_item(item, price, quantity = 1)

    quantity.times{@item << item}
    quantity.times{@price << price}
    @total += price * quantity
  end

  def apply_discount
    if @discount > 0
      @total *=(1 - (@discount / 100.0))
      return "After the discount, the total comes to $800."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @item
  end

  def void_last_transaction
    @total -= @price.last
  end

end
