
class CashRegister

attr_accessor :total, :discount
@@ITEMS = []
@@last_transaction = 0

def initialize(discount=0) 
  @total = 0 
  @discount = discount
end 

def add_item(title, price, quantity=1)
  @@ITEMS << title
 @total += price * quantity  
 @@last_transaction = price * quantity 
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

def void_last_transaction 
  @total -= @@last_transaction
end 

end 