require 'pry'

class CashRegister
  attr_reader :discount
  attr_accessor :total, :items, :last_transaction
 
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
   @total
  end
  
  def add_item(title, price, quantity = 1)
    
    @total = @total + price * quantity
    quantity.times {|i| @items << title}
    @last_transaction = price * quantity
  end

  def apply_discount
    @total = @total - (@total * @discount / 100)
     @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total}."
    end

  def items
    @items 
  end

  def void_last_transaction
      @total -= @last_transaction
  end
end
