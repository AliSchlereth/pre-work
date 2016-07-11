require 'pry'
# puts "What is the first number?"
# first_number = gets.to_i
# puts "What is the second number?"
# second_number = gets.to_i
numbers = []
user_input = nil
while user_input != "DONE"
  puts "What is your number?"
  user_input = gets.chomp
  numbers << user_input.to_f unless user_input == "DONE"
end
puts "Would you like to add (1), subtract (2), multiply (3), or divide (4) these numbers?"
operation_choice = gets.to_i

if operation_choice == 1
   sum = numbers.reduce(:+)
   puts "The sum is #{sum}"
 elsif operation_choice == 2
   difference = numbers.reduce(:-)
   puts "The difference is #{difference}"
 elsif operation_choice == 3
   product = numbers.reduce(:*)
   puts "The product is #{product}"
 else
   dividend = numbers.reduce(:/)
   puts "The dividend is #{dividend}"
 end
