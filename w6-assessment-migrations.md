# 12072020 Migrations


add column, edit, remove column, rename column, change data type

rails new migrations -T 
cd migrations

rails db:create (always)

create a table:

rails generate model icecream flavor:string

$ atom .

icecream.rb
db/migrate/ migrations (long file name)
it helps keeping a log of my work

$ rails db:migrate

(1)
$ rails generate migration "name of my migration class" add_calories_to_icecream
(creates a new file in d/migrate/....)



class AddCaloriesToIcecream < ActiveRecord::Migration[6.0]
  def change
#add_column :table_name, :column_name, :datatype
(2) add_column :icecreams, :calories, :integer
  end
end


rails db:migrate (3)

(1) $ rails generate migration add_scoops_to_icecream

(2) "migration file
#add_column :table_name, :column_name, :datatype
add_column  :icecreams,  :scoops,      :integer

(3) $ rails db:migrate


## MODIFYNG
(1)                         modifing a data type
$ rails generate migration change_calories_to_string

open file in atom

(2)
change_column :icecreams, :calories, :string

(3) $rails db:migrate

I can always check schema.rb!!!!!!!!!!!


###### DELETE
$ rails generate migration remove_calories_from_icecream

#remove_column :table_name, :column_name,
remove_column :icecreams, :calories, 

$rails db:migrate

### RENAME A COLUMN

rails generate migration rename_flavor_to_flavor_type

rename_column :table_name, :old_column, :new_column
              :icecreams,  :flavor     , :flavor_type

(3) $ rails db:migrate

### 


Icecream.all




$ rails new favorite_movies -d postgresql -T
$ cd favorite_movies
$ rails db:create
$ rails generate model List
$ rails server

$ rails generate model movie title:string catergory:string

$ atom .

$ rails db:migrate
# we got the schema







#### Challenges
1) Add five entries to the database via the Rails console

$ rails c
# Movie is the name of our class

Movie.create title:"Pulp Fiction", category:"Non-Fiction"
Movie.create title:"Source Code", category:"Drama"
Movie.create title:"Shrek", category:"Childrens"
Movie.create title:"Legally Blonde", category:"Drama"
Movie.create title:"The Lorax", category:"Childrens"

$ pp Movie.all

2) Create a migration to add a new column to the database called movie_length

$ rails generate migration add_movie_length_to_movie

add_column :table_name, :column_name, :datatype
add_column :movies:movie_length :integer

$ rails db:migrate


3) Update the values of the five existing attributes to include a movie_length value

rails c

length1 = Movie.find 1
lenght1.movie_length = 90
length1.save

length2 = Movie.find 2
pp length2
length2.movie_length = 120
length1.save

length3 = Movie.find 3
pp length3
length3.movie_length = 87
length3.save

length4 = Movie.find 4
pp length4
length4.movie_length = 125
length4.save

length5 = Movie.find 5
pp length5
length5.movie_length = 101
length5.save


4) Generate a migration to rename the column 'category' to 'genre'

### RENAME A COLUMN

$ rails generate migration rename_category_to_genre

rename_column :table_name, :old_column, :new_column
rename_column :movies,     :category, :genre

$ rails db:migrate