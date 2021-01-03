# Associations

has many --> belongs to relationships

Person              Email

id    name      id address


$ rails app 
$ rails db:create

# a person can like many types of icecreams

$ rails generate model Person name:string 
$ rails db:migrate

$ rails c

Person. create name: "Raul"
Person. create name: "Chris"
Person. create name: "Mina"
Person. create name: "Ryan"

exit

# additional column (foreign key) person_id
$ rails generate model IceCream flavor:string scoops:integer person_id:integer

(schema should have two tables, people and ice creams)

models/concerns/person.rb
class Person < ApplicationRecord
    has_many :ice_creams
end

models/concerns/ice_cream.rb

class IceCream < ApplicationRecord
belongs_to :person
end

# add ice cream, but they can't be on their own
# create a variable 
rails c

# IceCream id 1
raul = Person.first
# var + table create method acting on the ice cream table acting on the istance of the person and I pass the flavor and scooops
raul.ice_creams.create flavor: 'cookies and cream', scoops: 2

# person_id: 1 now, it's because it's connected through the 
# create method save automatically

# IceCream id 2
r = Person.find 1
r.ice_creams.create flavor: 'Vanilla', scoops : 1

IceCream.all

# IceCream id 3
chris = Person.second

chris.ice_creams.create flavor: 'Mint chip", scoops:3

# person-id is 2 (Chris)


# IceCream id 4

mina = Person.find 3
mina.ice_creams.create flavor: 'Peanut butter cup', scoops : 7
# person_id 3 (Mina)

# Challenge


$ rails new banking -d postgresql -T
S cd banking
$ rails db:create

code .


$ rails generate model Owner name:string address:string 
$ rails generate model CreditCard number:string  exp_date: integer  owner:string card_id: integer

$ rails db:migrate


1) Create three owners and save them in the database

app/models/credit_card.rb
belongs_to :owner

app/models/owner.rb
has_many :credit_cards


Owner.create name: "Raul", address:"DTSD"

micheal = Owner.second

micheal.credit_cards.create number:"484848484848" , exp_date: 0325





rails generate migration rename_flavor_to_flavor_type
rename_column :table_name, :old_column, :new_column
rename_column :credit_cards :owner, :owner_id
            
(3) $ rails db:migrate


(1) modifing a data type
$ rails generate migration owner_id_to_string
open file in atom
(2)
change_column :credit_cards, :owner_id, :integer
(3) $rails db:migrate





2) Create a credit card in the database for each owner
3) Add two more credit cards to one of the owners







raul = Owner.first
# var + table create method acting on the ice cream table acting on the istance of the person and I pass the flavor and scooops
raul.ice_creams.create flavor: 'cookies and cream', scoops: 2