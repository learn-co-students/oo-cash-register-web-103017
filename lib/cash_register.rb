class CashRegister
  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @array_of_items = []
    @last_transaction = {}
  end

  attr_reader :discount
  attr_accessor :total

  def add_item(title, price, quantity = 1)

    quantity.times do
      @array_of_items << title
    end

    @last_transaction[:title] = title
    @last_transaction[:price] = price
    @last_transaction[:quantity] = quantity

    @total += price * quantity
  end

  def apply_discount
    return "There is no discount to apply." if @discount == 0
    @total = @total*(100-@discount)/100
    @total = @total.to_i
    "After the discount, the total comes to $#{@total}."
  end

  def items
    @array_of_items
  end

  def void_last_transaction
    add_item(@last_transaction[:title], @last_transaction[:price], -@last_transaction[:quantity])
  end

end
