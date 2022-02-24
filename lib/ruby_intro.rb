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
  starts_with_const = s[0]
  if (/[b-df-hj-np-tv-z]/i.match(starts_with_const)) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if (/^[0-1]+$/.match(s)).nil?
    return false
  end
  a = s.to_i
  if a % 4!=0
    return false
  end
  return true
end

# Part 3

class BookInStock
  def initialize(isbn, price)  

    def isbn= isbn 
      @isbn = isbn
    end
    def price= price
      @price = price
    end
    def isbn
      @isbn
    end
    def price
      @price
    end

    if isbn.empty?
      raise ArgumentError.new("isbn can't be empty")
    end
    @isbn = isbn
      if price <= 0
      raise ArgumentError.new("price can't be less than 0")
    end
    @price = price
  end

  def price_as_string
    return "$%.2f" % self.price
  end 
end
