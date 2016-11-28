# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  new_string = ""
    (0...string.size).each do |i|
      if return_odds
        if i.odd?
          new_string << string[i]
        end
      else
        if i.even?
          new_string << string[i]
        end
      end
    end
    return new_string
end
