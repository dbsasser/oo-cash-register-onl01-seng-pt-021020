
class CashRegister

attr_accessor :total, :discount
@@item_array = []

def initialize(discount=0) 
  @total = 0 
  @discount = discount
end 

def add_item(title, price, quantity=1)
  @@item_array << title
 @total += price * quantity    
end

def apply_discount
  if @discount == 0
    return "There is no discount to apply."
  else
    @total = @total - ((@total * @discount) / 100)
    return "After the discount, the total comes to $#{@total}."
  end
end

def items
  @@item_array
end

end 