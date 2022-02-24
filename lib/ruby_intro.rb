# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each {|a| sum = sum +a}
  return sum
end

def max_2_sum arr
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  if arr.empty? && n.zero?
    return false 
  end
  arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
attr_reader :price, :isbn

def constructor(isbn, price)
  if isbn == ''
    raise ArgumentError.new("The isbn must be filled out.")
  end
  self.isbn == isbn
  if price <= 0
    raise ArgumentError.new("The price must be greater than 0")
  end
  self.price = price.to_f
end

def price_as_string
  return sprintf "$"+"%.2f", self.price
end
end
