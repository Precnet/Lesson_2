STOP = 'stop'

def get_input
  puts 'Enter product name, price per item, number of items (Example: bread 2.4 4):'
  gets.chomp
end

def extract_data_from_string(string)
  data = string.split(' ')
  [data[0], [data[1].to_f, data[2].to_i]]
end

def add_purchase_to_baslet(basket, purchase)
  basket[purchase[0]] = purchase[1]
end

busket = {}
