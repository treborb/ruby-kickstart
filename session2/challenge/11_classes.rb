# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong

  attr_accessor :number_of_bottles
  
  def initialize(number_of_bottles)
    number_of_bottles = 99 if number_of_bottles > 99
    number_of_bottles = 0 if number_of_bottles < 0
    @number_of_bottles = number_of_bottles
  end
  
  def numbers_to_words(bottles)
    one_to_nineteen = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    multiples_of_ten = %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)
        if bottles % 10 == 0
            multiples_of_ten[bottles / 10].capitalize
        elsif bottles < 20
            one_to_nineteen[bottles].capitalize
        else
            "#{multiples_of_ten[bottles / 10]}-#{one_to_nineteen[(bottles - ((bottles / 10).floor * 10)) ]}".capitalize
        end
  end
  
  def is_plural?(n)
    n ==0 || n > 1 ? "bottles" : "bottle"
  end
  
  def print_song
    @number_of_bottles.downto 1 do |i|
        puts "#{numbers_to_words(i)} #{is_plural?(i)} of beer on the wall,"
        puts "#{numbers_to_words(i)} #{is_plural?(i)} of beer,"
        puts "Take one down, pass it around,"
        puts "#{numbers_to_words(i - 1)} #{is_plural?(i - 1)} of beer on the wall."
    end 
  end
  
end
