# Fill array with numbers from 10 to 100 with step=5

def generate_array_with_step(start = 10, stop = 100, step = 5)
  (start..stop).step(step).to_a
end

p generate_array_with_step
p generate_array_with_step(100, 200, 10)
