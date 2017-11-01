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
    @total += (price * quantity)

    quantity.times do
      @items <<title
    end

    @item_price[title] = price
  end

  def apply_discount
    if @discount== 0
      "There is no discount to apply."
    else
      @total *= (1-(@discount.to_f/100))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total -= @item_price[@items[-1]]
  end
end
