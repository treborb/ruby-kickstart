# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  new_string = ""
  string.size.times.each do |i|
    if string[i + 1] != nil && (string[i] == "r" || string[i] == "R")
      new_string << string[i + 1]
    end
  end
  return new_string
end
