require 'pry'

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

begin
  puts "Enter the number of items:"
  n = gets.to_i

  n.times do |i|
    puts "\nEnter the item name:"
    item = gets.chomp

    puts "Enter the price per unit:"
    price = Float(gets) rescue nil
    raise "Invalid price entered" if price.nil? || price < 0

    puts "Enter the item quantity:"
    quantity = Integer(gets) rescue nil
    raise "Invalid quantity entered" if quantity.nil? || quantity < 0

    puts "Enter the discount % if applicable:"
    discount = Float(gets) rescue 0
    discount = 0 if discount < 0

    generate_bill(item: item, price: price, quantity: quantity, discount: discount)
  end

rescue => e
  puts "Error: #{e.message}"
end

# To debug, uncomment the next line:
# binding.pry
