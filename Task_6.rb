STOP = 'stop'

def fill_basket(basket)
  while true
    user_input = get_input
    break if is_stop? user_input
    purchase = extract_data_from_string(user_input)
    add_purchase_to_basket(basket, purchase)
  end
end

def get_input
  puts 'Enter product name, price per item, number of items (Example: bread 2.4 4):'
  gets.chomp
end

def is_stop?(user_input)
  user_input == STOP
end

def extract_data_from_string(string)
  data = string.split(' ')
  [data[0], [data[1].to_f, data[2].to_i]]
end

def add_purchase_to_basket(basket, purchase)
  basket[purchase[0]] = purchase[1]
end

def print_basket(basket)
  puts ' Your basket contains:'
  print basket
end

basket = {}
fill_basket basket

print_basket(basket)
