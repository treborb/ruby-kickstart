# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker(opposites_attract, *elements)
  to_return = []
  elements.each_slice 2 do |first, last|
    first  = !!first
    last   = !!last
    result = if opposites_attract
               first != last
             else
               first == last
             end
    to_return << result
  end
  to_return
end

# My failed attempt

=begin

def match_maker(*args)
    falsey = [false, nil]
    args[0] = true ? first_value = true : first_value = false
    arr = []
    (1...args.size).step(2) do |i|
        if first_value == true
                (args[i] == true && args[i+1] == true) || ( if args[i] == false && args[i+1] == false) ? arr << false : arr << true #? return true : return false
        else
                (args[i] == true && args[i+1] == true) || (args[i] == false && args[i+1] == false) ? arr << true : arr << false
        end
    end
    return arr
end

=end
