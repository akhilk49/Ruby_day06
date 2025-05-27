def generate_bill(item:, price:, quantity: 1, discount: 0)
  total = price * quantity
  discounted_total = total - (total * discount / 100.0)

  puts "\n Item Summary "
  puts "Item: #{item}"
  puts "Price per unit: #{price}"
  puts "Quantity: #{quantity}"
  puts "Discount: #{discount}%"
  puts "Total after discount: #{discounted_total.round(2)}"
end

puts "Enter the number of items:"
n = gets.to_i  

n.times do |i|  
  puts "\nEnter the item name:"
  item = gets.chomp

  puts "Enter the price per unit:"
  price = gets.to_f  

  puts "Enter the item quantity:"
  quantity = gets.to_i  

  puts "Enter the discount % if applicable:"
  discount = gets.to_f  

  generate_bill(item: item, price: price, quantity: quantity, discount: discount)
end
