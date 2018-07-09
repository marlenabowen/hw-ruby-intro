# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  arr.inject(:+)
end

def max_2_sum arr
  return 0 if arr.empty?
  arr.max(2).inject(:+)
end

def sum_to_n? arr, n
  return false if arr.length <= 1
  !!arr.uniq.combination(2).detect {
    |a, b| a + b == n
  }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.empty? || /\W/.match(s[0])
  return true unless /\A[a,e,i,o,u]/i.match(s[0])
  false
end

def binary_multiple_of_4? s
  return false if /\D/.match(s)
  return true if /[0,1]/.match(s) && s.to_i % 4 == 0
  false
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
