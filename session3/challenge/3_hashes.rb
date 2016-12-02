# Write a method that takes a string and returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

def word_count(*args)
    my_hash = {}
    lowercase = args.select { |i| i.downcase? }
    num_times = lowercase.map.each { |i| lowercase.count(i) }
    1.upto args.size do |counter|
        my_key = lowercase.each { |i| i }
        my_val = num_times.each { |i| i }
        my_hash[my_key] = my_val
    end
  return my_hash
end
