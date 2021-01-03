Rails 10/3/2020

Ruby on Rails is a framework that uses the ruby language.
(Github. AirBNB,)

MVC 
way of organizing the responsivity of your code
M - model, database layer. 
V - view (what the users sees, React)
C - controller (next week) 

put MVC togheter... full stack application!
but technology can come from different places.

Full-stack Rails - MVC all coming from Rails
Decoupled application - MC from Rails and V is React

Rails - DH created Rails in 2004/5, open-source, version 6

convention over configuration
Rails magic!
casing is important!

New application"

$ rails new

remove testing framework and replace DB with postgresSQL
            name   del          del testing
$ rails new my_app -d postgresql -T 

app
controllers
modules
views       MVC

applicationsrecord.rb  
ot has a class, 

folder : db


----------TERMINAL------

$ psql  runs postgresql
$ \l    list all the databases
$ exit 

$ rails s 
browser: localhost:3000

control C to stops the server from running



Active Record 10/3/2020

Active record is an ORM which stands for Object


create a table in Active Record

create a new table (model)

1) generate command


$ rails generate (create stuff)
$ rails generate model Schedule 
(creating a class, pascal case)

2) Active Record data types
no puntuation, key:values pair
$ rails generate model Schedule day:string event_date:date event_description:string

rails generate model Person first_name:string last_name:string phone:string

I can find the new file in the folder in VScode models/concerns/schedule.rb

$ rails db:migrate (run and create teh tabel)

never modify schema.rb
it's a reference and it's a way to understand the logic.

rails c goes to thee rails console

Schedule.all (active record query)


create a new instance of my class

Schedule.create (argument of all our key:value pairs)

$: Schedule.create day: "Tuesday", event_date: "2020-12-03", event_description: "Yoga"

$: Schedule.create day:("Wednsday", event_date: "2020-12-02", event_description: "White boarding interview")


Show one item:
$ Schedule.find 78
$ Schedule.first
$ Sxchedule.last
$ Schedule.second
$ Schedule.where day: "Tuesday"
$ Schedule.where day: "Wednesday"
$ Schedule.where day:( "Wednesday").first

$ wed = Schedule.where day: "Wednesday"
!!!!! temp variable stored in the shell,
wed.first

Schedule.find(3).day




### Editing content in the database ( UPDATE)

$ database = Schedule.find 3 (decide what to update,)
database.event_description = "Worked with SQL data queries" (assigning a new key )
$ database          (to see it)
$ database.save     (to permanently save it)


##### DELETE content in the Database

$ x = Schedule.first
$ x
x.destroy (active record query that delets an item)
$ Schedule.first.destroy
$ 



####### Challenges with Raul

Create a new Rails app named 'rolodex'.
Create the database, the outcome should look like this:
Created database 'rolodex_development'
Created database 'rolodex_test'
Generate a Person model with a first_name, last_name, and phone. All fields should be strings.
Run a migration to set up the database.
Open up Rails console.
Actions
Add five family members into the Person table in the Rails console.
Person.create first_name:"Raul", last_name:"Verdejo", phone:6196666825
Person.create first_name:"Filippo", last_name:"Ventu", phone:6197866578
Person.create first_name:"Rogelio", last_name:"Rodriguez", phone:6199871234
Person.create first_name:"Carlos", last_name:"Ventu", phone:6195431267
Person.create first_name:"Mauricio", last_name:"Vasquez", phone:619457890
Retrieve all the items in the database.
$pp Person.all
Add yourself to the Person table.
Retrieve all the entries that have the same last_name as you.
Person.where last_name:"Ventu"
Update the phone number of the last entry in the database.
phone
Rogelio = person.find 3
Rogelio.phone = 617898
Rogelio.save
Retrieve the first_name of the third Person in the database.
Person.find(3).first_name
Stretch Challenges
Update all the family members with the same last_name as you, to have the same phone number as you.
Remove all family members that do not have your last_name.





New
1:05
user = Person.where  last_name: "Ventu"