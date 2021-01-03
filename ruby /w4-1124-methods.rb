# Ruby methods

# def - define, keyword that sets up a method


def greeter
    # code to be executed
     'yo'
    end
# implicit return the last line of the code.


def greeter
# code to be executed
 return   'yo'
end

# calling the method and logging the output
p greeter


# Method with an argument
def greeter name
    "Yo,  #{name}!"
end

p greeter "Summer"


def multiplier num1,num2
    num1 * num2
end

p multiplier 3,4

def multiplier (num1, num2)
    num1 * num2
end
p multiplier 3, 4

my_num1 = 4
my_num2 = 8

def multiplier (num1, num2)
    num1 * num2
end

p multiplier my_num1, my_num2

def voting_age number
    if number >= 18
      'you can drink and vote'
    elsif number>= 18
      'you can vote'
    else 
       'Sorry, kiddo'
    end

end

p voting_age 14
p voting_age 18
p voting_aga 78













