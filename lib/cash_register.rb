class CashRegister

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @item_price = {}
  end

  attr_accessor :total, :discount
  attr_reader :items

  def add_item(title,price,quantity=1)
    self.total += (price * quantity)

    quantity.times do
      @items <<title
    end

    @item_price[title] = price
  end

  def apply_discount
    if self.discount== 0
      "There is no discount to apply."
    else
      self.total *= (1-(self.discount.to_f/100))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    self.total -= @item_price[@items[-1]]
  end
end
