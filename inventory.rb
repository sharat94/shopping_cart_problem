require './warehouse'

class Inventory 
  @cart = []
  @cart << Warehouse.new("toronto", { 'product_1': 10, 'product_3': 2})
  @cart << Warehouse.new("montreal", { 'product_1': 5})
  @cart << Warehouse.new("edmonton", { 'product_2': 5})
  class << self
    attr_accessor :cart
  end
end
