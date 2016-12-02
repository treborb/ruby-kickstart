# Write first_pos, a method which takes a string and , returns a hash
# whose keys are all the words in the string, and values are the
# earliest position they were seen in the string.
#
# There will be no punctuation in the strings.
#
# first_pos "The dog and the cat and the cow" # => {"The" => 0, "dog" => 1, "and" => 2, "the" => 3, "cat" => 4, "cow" => 7}


def first_pos(*args)
   my_hash = {}
   1.upto args.size do |counter|
       my_key = args.each { |i| i }
       my_val = arr.detect { |i| args.index(i) }
       my_hash[my_key] = my_val
   end
end