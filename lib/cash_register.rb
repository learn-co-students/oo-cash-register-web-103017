class CashRegister

  def initialize(discount=nil )
    @total = 0
    @discount = discount
    @items = []
  end

  attr_accessor :total
  attr_accessor :discount
  attr_accessor :items

  def add_item(title, price, quantity=1)
    @total += price * quantity
    counter = 0
    until counter == quantity
      self.items << title
      counter += 1
    end
  end

  def apply_discount
    if discount
      @total = @total - @total * @discount /100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = 0
  end


end
