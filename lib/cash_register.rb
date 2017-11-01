class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, amount = 1)
    amount.times do
      @total += price
      @items << item
      @last_transaction = price
    end
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      total = @total
      total1 = (total / (100/@discount))
      @total -=  total1
       "After the discount, the total comes to $#{@total}."
     end
  end

  def void_last_transaction
    @total -= @last_transaction
  end


end
