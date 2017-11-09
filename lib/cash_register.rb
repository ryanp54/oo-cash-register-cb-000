class CashRegister
  attr_accessor :total, :discount, :previous_total, :items
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  def add_item(title, price, quantity = 1)
    self.items << title
    self.previous_total = self.total
    self.total += price * quantity
  end
  def apply_discount
    self.total = self.total * (1 - (self.discount/100.0))
    self.discount == 0 ? "There is no discount to apply" : "Discount applied. Total is #{total}"
  end
  def void_last_transaction
    self.total = self.previous_total
    self.items.pop()
  end
end
