# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  print "Please type a number, followed by a space and then another number, then press enter:"
  user_input = gets.chomp.split(" ")
  first_int = user_input[0].to_i
  second_int = user_input[1].to_i
  puts first_int + second_int
  puts first_int - second_int
  puts first_int * second_int
end
