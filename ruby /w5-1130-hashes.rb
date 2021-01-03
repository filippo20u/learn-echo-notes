# 11/30/2020 Hashes

# collection of key:value pair wrapped into curly braces and referenced them
# any data type

# contact = {firstName: 'Sherlock', lastName: 'Holmes'}
# p contact

# Keys - of the data type symbol
# Value - can be any data type

# => hash rocket - can be used to separate keys and values in a hash

# {:firstName=> "Sherlock", lastName=> "Holmes"}


contact = Hash.new
# I'm referencing the class that conntaines a class blueprint of all classes
# another way to create a hash, referencing the class hash
p contact

# syntax to add key:value pair to add key:value pairs
contact[:first_name] = 'Sherlock'
contact[:last_name] = 'Holmes'
p contact

# get a single content
p contact[:first_name]

# Change a key:value pair
contact[:first_name] = 'John'
p contact

# delete something
contact.delete(:last_name)
# # equivalent
contact.delete:last_name
# p contact

# hashes are enumerable - meaning you can iterate on a hash
# like I can iterate through an array

contact.each do |key, value|
    p "Key is #{key} and value is #{value}"   
end

contact[:address] = '221B Baker Street'


def my_contact_info hash
    hash.map do |key, value| 
        "My #{key} is #{value}."
    end
end

p my_contact_info contact