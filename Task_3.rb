# Fill array with Fibonacci`s numbers upto 100

def generate_fibonacci_upto(border = 100)
  result = [0, 1]
  result.push(generate_fibonacci_next(result[-2], result[-1])) while  result[-1] < border
  result[0..-2]
end

def generate_fibonacci_next(first, second)
  first + second
end

p generate_fibonacci_upto
p generate_fibonacci_upto 300
