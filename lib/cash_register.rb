class CashRegister

  attr_accessor :total, :discount
  attr_reader :all_items, :prices


  def initialize(discount=nil)
    @total=0
    @discount=discount
    @all_items=[]
    @prices=[]
  end

  def add_item(title, price, quantity=1)
    quantity.times {@all_items << title}
    @prices << price
    total=price*quantity
    @total+=total
  end

  def apply_discount
    if @dicount=discount
      percent=discount.to_f/100
      @total=@total-@total.to_f*percent
      return "After the discount, the total comes to $#{@total.to_i}."
    else
     return "There is no discount to apply."
    end
    end

  def items
    @all_items
  end

  def void_last_transaction
    @total-=@prices.last
  end

end
