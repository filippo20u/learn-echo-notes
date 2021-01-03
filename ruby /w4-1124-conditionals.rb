# Ruby conditionals
# 11/24/2020

# my_name = 'Sarah'

# Ways to have content in the terminal:
# (print my program in the terminal)

# terminal: ruby "filename.rb" (like node)

# 1) assumes is a string
# puts my_name 

# just print, all together
# print 123
# print 456
# print 789

# more raw data type
# p "hello"
# p 'hello'
# p my_name

# num = 10

# if num > 20 
#     puts "#{num} is greater than 20"
# else
#     puts "#{num} is less than 20"
# end
# not a lot of syntax
# 


# num = 20

# if num > 20 
#     puts "#{num} is greater than 20"

# elsif num < 20

#     puts "#{num} is less than 20"
# else 
#     p "something went wrong"
# end
# not a lot of syntax
# 


# __________________________________

# Ruby can add something from the terminal
# default data type is a string


# gets expects information from the terminal
# sxand add stuff at the end like /n
num = gets.chomp
# .chomp 

# p num

p num


if num.to_i > 20 
        puts "#{num} is greater than 20"
    
    elsif num.to_i < 20
    
        puts "#{num} is less than 20"
    else 
        p "something went wrong"
    end