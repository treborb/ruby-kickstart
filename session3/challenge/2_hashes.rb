# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(num)
    #require 'pry'
    #gem 'pry-byebug'
    #binding.pry
   my_hash = Hash.new
    1.upto num do |x|
        next if x.even?
        all = Array.new(x) { |i| i + 1 }
        evens = all.select { |i| i.even? }
        my_hash[x] = evens
    end
    my_hash
end

# puts staircase(5)

=begin

def staircase(n)

# creates a new empty hash
  to_return = {} 
  
# counts from 1 up to the number passed to the method (n) and iterates that many times. crnt_size is the number of the current iteration.
  1.upto n do |crnt_size|
  
 # skips to the next iteration is crnt_size is even
    next if crnt_size.even? 
    
# creates a new array with the current iteration number (crnt_size) being the number of elements in the array.
# The following block then iterates over the elements and adds 1 to their value so that the element number of the array doesn't start at zero.
    all   = Array.new(crnt_size) { |i| i + 1 }
    
# creates a new array that iterates through the "all" array and picks out all of the even numbers
    evens = all.select { |i| i.even? } 
    
# adds a key/value pair to the hash "to_return". The key is equal to the current iteration count and is always odd and the value is equal to the array of evens (evens).
    to_return[crnt_size] = evens
  end
  
# returns the final hash
  to_return
end

=end