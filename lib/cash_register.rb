class CashRegister
  attr_accessor :total, :discount, :previous_total, :items
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  def add_item(title, price, quantity = 1)
    items << title
    previous_total = total
    total += price * quantity
  end
  def apply_discount
    total = total * (1 - discount)
    discount == 0 ? "No discount" : "Discount applied. Total is #{total}"
  end
  def void_last_transaction
    total = previous_total
    items.pop()    
  end
end