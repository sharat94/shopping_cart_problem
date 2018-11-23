require './inventory'
require 'pry'

class FindWarehouse
  
  def initialize(address, dataset)
    @address = address
    @dataset = dataset
    @output = {}
  end

  def get_nearest_warehouse
    warehouses = Inventory.cart
    puts warehouses
    nearest_warehouse = warehouses.select{|wh| wh.location == @address}.last
    @dataset.each do |key, value|
      if nearest_warehouse.details.keys.include?(key)
        @output.merge!({key => value})
      else
        find_warehouse_with_product(key, nearest_warehouse)
      end
  end
  def find_warehouse_with_product(key, nearest_warehouse)
    warehouse = warehouses.select{|wh| wh.details.keys.include?(key) && wh != nearest_warehouse}
    @output.merge!({}) if !warehouse.nil?
  end
end