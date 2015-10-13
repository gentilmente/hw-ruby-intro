# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  else
    return arr.reduce(:+) 
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  elsif arr.count == 1
    return arr[0]
  else
    return arr.sort[-2..-1].reduce(:+) 
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty?
  arr.combination(2).count { |a,b| a + b == n } > 0
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  
  return false if !s or s=="" 
  (('a'..'z').to_a - ['a', 'e' 'i', 'o', 'u']).include?(s[0].downcase)
  
  # reg_1=/[a-z]/   
  # reg_2=/[^aeiou]/  
  # if(reg_1===s[0].downcase && reg_2===s[0].downcase) 
  #   return true  
  # else  
  #   return false  
  # end  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if !s or s=="" or !!s.index(/[^0|1]/)
  s.to_i(2) % 4 == 0
  
  # reg=/[^01]/  
  # if(reg===s)  
  #   return false  
  # elsif(s.to_i.to_s(10).to_i%4==0)   
  #   return true  
  # else  
  #   return false  
  # end  
end

# Part 3

class BookInStock
# YOUR CODE HERE
   attr_accessor :isbn , :price
   #attr_accessor :price
   def initialize(isbn, price)
     raise ArgumentError if price <= 0 or isbn.empty?
     @price = price
     @isbn = isbn
   end
   
   def price_as_string
     "$%0.2f" % price
   end
end
