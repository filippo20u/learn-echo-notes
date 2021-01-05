# Validations

$ NEW APP CALLED validations

$ cd validations
$ atom .

$ rails db:create

# need commands from RSPEC in the syllabus

# add RSPEC
$ bundle add rspec-rails
# bundle is like yarn, interacting with gem files

$ rails generate rspec:install

$ rails generate model Learnbook username:string email:string profile:text

$ rails db:migrate

spec/models/learnbook_spec.rb

    it 'is valid with attributes' do
    learnbook_test = Learnbook.create username: 'Chris' , email: 'chris@learnbook.com', profile: 'Chris doing awesome stuff'
    expect(learnbook_test).to be_valid
    end

# runs all the test in all the app
$ rspec spec
=> 1 example 0 failures



spec/models/learnbook_spec.rb

it "is not valid with a username" do
learnbook_test = Learnbook.create email: 'chris@learnbook.com', profile: 'Chris doing awesome stuff'
expect(learnbook_test.errors[:username]).to_not be_empty
end

# runs all the test in all the app
$ rspec spec
=> 1 example 1 failure


# this instance will run when you create a new instance of the Learnbook
app/modules/learnbook.rb

class Learnbook < ApplicationRecord
    validates :username, presence: true
end

$ rspec spec
=> passed!


spec/models/learnbook_spec.rb

it "is not valid with a username" do
learnbook_test = Learnbook.create username: "Chris", profile: 'Chris doing awesome stuff'
expect(learnbook_test.errors[:email]).to_not be_empty
end

app/modules/learnbook.rb

class Learnbook < ApplicationRecord
    validates :username, :email presence: true
end

$ rspec spec

rails c Learnbook.create username: 'Summer", profile: 'Coding and being awesome'
# id is nil because I didn't pass an email!

$ Learnbook.create!
# it tells you why it's failing

user = Learnbook.create
user


# new test

it "is not valid with username less than 3 characters' do
learnbook_test = Learnbook.create username: "C", email: "chris@learnbook.com" profile: 'Chris doing awesome stuff'
expect(learnbook_test.errors[:username]).to_not be_empty
end

app/modules/learnbook.rb

class Learnbook < ApplicationRecord
    validates :username, :email, presence: true
    validates :username, length: { minimum: 3 }
end

$ respec spec
# pass!


# new

it "is not valid with email less than 10 characters' do
learnbook_test = Learnbook.create username: "Chris" , email: "c@l.com" profile: 'Chris doing awesome stuff'
expect(learnbook_test.errors[:email]).to_not be_empty
end

$ respec spec
# fail!


class Learnbook < ApplicationRecord
    validates :username, :email, presence: true
    validates :username, length: { minimum: 3 }
    validates :email, length: { minimum: 10 }
end


$ respec spec
# pass!


# new

it "is not valid if email is not unique' do
learnbook_test_one = Learnbook.create username: "Chris" , email: "chris@learnbook.com" profile: 'Chris doing awesome stuff'
expect(learnbook_test_one.errors[:email]).to_not be_empty

learnbook_test_two = Learnbook.create username: "Chris" , email: "chris@learnbook.com" profile: 'Chris doing awesome stuff'
expect(learnbook_test_two.errors[:email]).to_not be_empty

end

$ respec spec
# fail!


 class Learnbook < ApplicationRecord
    validates :username, :email, presence: true
    validates :username, length: { minimum: 3 }
    validates :email, length: { minimum: 10 }
    validates :email, uniqueness: true
end

$ respec spec
# pass!


# I need to reenter the console to update conditions
rails c

sum = Learnbook.first
sum.email = 's@l.com'
sum.save



# custom validations (for stretch challenges)


it 'is not valid without an @ sample and an email'
learnbook_test = Learnbook.create username: "Chris" , email: "chrislearnbook.com" profile: 'Chris doing awesome stuff'
expect(learnbook_test.errors[:email]).to_not be_empty
end

$ rspec 
# fail 

class Learnbook < ApplicationRecord
    validates :username, :email, presence: true
    validates :username, length: { minimum: 3 }
    validates :email, length: { minimum: 10 }
    validates :email, uniqueness: true

# validate not validates if the method is not built in
    validate :check_at_symbol


    def check_at_symbol
# self is the varibale that is holding that instance
        unless self.email.includes? '@'
        errors.add(:email, 'Must include @.')
        end
    end

end






# Challenge WITH RYAN


require 'rails_helper'

RSpec.describe Account, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"


  it 'requires valid username, password and email' do
  account_test = Account.create username: 'Paula' , password: '123456' , email:"paul@gmail.com"
  expect(account_test).to be_valid
  end

  it 'requires valid username, password and email' do
    account_test_two = Account.create username: 'Paul' , email:"paul@gmail.com"
    expect(account_test_two).to be_valid
    end

# As a developer, I need every username to be at least 5 characters long.

it 'not valid if username is less than 5 characters' do
  account_test_three = Account.create username: 'Paula' , password: "123456" , email:"paul@gmail.com"
  expect(account_test_three[:username]).to_not be_empty
  end

# As a developer, I need each username to be unique.




class Account < ApplicationRecord
 validates :username, :password , :email, presence: true
 validates :username, length: { minimum: 5 }
end

# CODE FROM RYAN

class Account < ApplicationRecord
  validates :username, :password, :email, presence: true
  validates :username, length: { minimum: 5 }
  validates :username, uniqueness: true
  validates :password, length: { minimum: 6}
  validates :password, uniqueness: true
end


# above are validations for our account inside the models folder


# TEST FILE:

require 'rails_helper'
RSpec.describe Account, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it 'requires valid username, password and email' do
    account_test = Account.create username: 'Paula', password: '123456', email: "paul@gmail.com"
    expect(account_test).to be_valid
  end
  it 'requires valid username, password and email' do
    account_test_two = Account.create username: 'Paula', password: '123456', email: "paul@gmail.com"
    expect(account_test_two).to be_valid
  end
  it 'is not valid if username is less than 5 characters' do
    account_test_three = Account.create username: 'Paul', password: '123456', email: "paul@gmail.com"
    expect(account_test_three.errors[:username]).to_not be_empty
  end
  it 'is not valid if username is not unique!' do
    account_test_four = Account.create username: 'Paula', password: '123456', email: "paul@gmail.com"
    account_test_five = Account.create username: 'Paula', password: '123456', email: "paul@gmail.com"
    expect(account_test_five.errors[:username]).to_not be_empty
  end
  it 'it not valid is password is less than 6 characters' do
    account_test_six = Account.create username: 'Paula', password:'12345', email:'paula@gmail.com'
    expect(account_test_six.errors[:password]).to_not be_empty
  end
  it 'is not valid if the password is not unique' do
    account_test_seven = Account.create username: 'Michael', password:'123456', email:'michael@gmail.com'
    account_test_eight = Account.create username: 'Michael', password:'123456', email:'michael@gmail.com'
    expect(account_test_eight.errors[:password]).to_not be_empty
  end
end

# above are all the tests written to PASS inside the spec folder


# Stories for Address:
# As a developer, I want my Account model to have many associated Addresses.

$ rails generate model Address street_number: integer street_name:string city:string state:string zip:integer



# As a developer, I want Address to have street_number, street_name, city, state, and zip attributes.
# As a developer, I want to validate the presence of all fields on Address.



# stretch challenges

it 'is not valid without an integer in the password'
learnbook_test = Learnbook.create username: "Chris" , email: "chrislearnbook.com" profile: 'Chris doing awesome stuff'
expect(learnbook_test.errors[:email]).to_not be_empty
end



def check_pwinteger

end


