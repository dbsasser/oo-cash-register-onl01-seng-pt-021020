
class CashRegister

attr_accessor :total, :discount

def initialize(discount=0) 
  @total = 0 
  @discount = discount
end 

def add_item(title, price, quanity=1)
 @total =+ price * 1    
end

end 