# Given an array of elements, return true if any element shows up three times in a row
# 
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

#def got_three?(array)
#    array.each { |i| i == (array[i + 1] && array[i + 2]) ? true : false }
#end
def got_three?(array)
    x = ""
    y = ""
    z = ""
    array.each do |i|
        z = i if (y == i && x == i)
        return true if z != "" && (x == y && y == z)
        y = "" && x = "" if (z != x && z != y)
        y = i if x == i
        x = i
    end
    return false
end