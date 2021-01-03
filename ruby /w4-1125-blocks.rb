# Ruby Blocks
# 11/25/2020

Block - anonymous function passed to a method

# define block in two ways:
# do / end
# {}

# Iterators

# times
times is the method and do/end is the block, what is in the block is the executable code

5.times do
   p  'hello'
end

# same thing below just different syntax, curly braces are usually for one liners
5.times {p 'hello'}

nums =5 
nums.times do
    p 'hello'
end


number = 1

10.times do
   p number
    number += 1
end

# each
# Each runs on an array

numbers = [4, 5, 6, 7, 8 ]
numers.each do
    p 'yo'
end

numbers = [4, 5, 6, 7, 8 ]
numers.each do [value]
    p value
end

numbers = [4, 5, 6, 7, 8 ]
numers.each do |banana|
    p banana * 2
end


# Map


numbers = [4, 5, 6, 7, 8 ]

multArr = numbers.map do |value|
    value * 3
end

p multArr

# wrapped in a function

def multArr array
  array.map do |value|
    value * 3
  end  
end
# one end for def and one end for do

p multArr numbers
p multArr [3,4,5]
p multArr [8,21,12]



make an evaluation eve/odd

def multArr array
    array.map do |value|
        if value % 2 = 0
            'even'
        else 
            'odd'
        end
    end  
end



# .even? or .odd? syntactical sugar

def multArr array
    array.map do |value|
        if value.even?
            'even'
        else 
            'odd'
        end
    end  
end


banana.map! 
# becomes a mutator method, it changes the array permanently




####### FILTER

numbers = [4, 5, 6, 7, 8]

WATCH LAST 20 MINUTES OF CLASS





