require './warehouse'
require './find_warehouse'
require 'pry'

puts 'Enter your address'
input_address = gets.strip
dataset = []
input_quantity = nil
input_product = nil
while (input_quantity != 'end' && input_product != 'end')
  puts 'Enter the peroduct id :'
  input_product = gets.strip
  next if input_product == 'end'
  puts 'Enter the quantity of products required'
  input_quantity = gets.strip
  dataset << {"#{input_product}" => input_quantity}
end
binding.pry

FindWarehouse.new(input_address, dataset).get_nearest_warehouse