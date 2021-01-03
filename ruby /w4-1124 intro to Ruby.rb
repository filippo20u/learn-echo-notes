# Ruby!  (look at SARAH file!!!)

# Mats is nice ans so we are nice - minaswan

Dynamically typed -  don't have to decare the type of data you intend to assign to a variable, and you can reassign to be any type

Scripting language:  like JS, logic language
HTML, CSS are not 

Open-souce - online and available for free, can be modified by anyone

Object-oriented - (OOP)
Plato : forms is a representation of a thing, the thing itself is what lives in the visible world

form is the class, object is the reality



Ruby console : irb interactive ruby terminal

2.7.0 :001 
2.7.0 is the version


Data types:

1) Integer :numbers: add subtract, multipply, divide, modulo
Floats - partial/non whole numbers
4/3 => 1
4.0 / 3  (.0 returns a float)

2) String
    double quotes are not welcome! as per the style guude
    - Two exceptions - punctuaction "Hey y'all"

3) Boolean
relational operators - < > <= >=

Ruby has truthy and falsey, no lose or strict equality.
5 == 5,   only two equal signs
!= Bang operator

Logical oprator (&& || ) 5 < 8 && 4 == 4

Nil like null, equal to nothing else

#Symbol - unique identifier

# Variable - declaration, snake_case
single equaL sign to assign the value

my_name = "Sarah"
=> "Sarah"
my_name = 5
=> 5

### exception 2 
pound instead of dollar
# stringle interpolation: "Hey there #{my_name}""


# Built in methods NO PARENTHESIS AT THE END!

they are accessors, they don't change the element they are acted on

- length
my_name.length
- my_name.upcase
- my_name.capitalize

you don't need parenthesis to pass arguments, they are mmore for convenience and clarity

my_name.include?  
# question mark means the aswer will be a boolean response

my_name.include?"k"
my_name.include?("k")
my_name.include?("k")

my_name.class kind of typeof method, returns the class
.to_s changes into a string
.to_i changes to an integer

# Arrays

my_nums = [1,2,3,4,5]
my_name.length
=> 5
my_nums[1] 
=> 2
my_nums.first
my_nums.last
my_nums[-1] 
=> last value!!!   I can count indexes from either side of the Arrays
my_nums.reverse

chain methods
my_nums.reverse.first  flip and give me the first

nine = my_nums.reverse.first
> nine
=> 9

my_nums[3] = 29 reassigning 

shovel operator <<
acts as a .push in JS 
my_nums << 88

if I want to change an array I can add a bang operator

my_nums.reverse!

