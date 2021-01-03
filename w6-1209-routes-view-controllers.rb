# 12-09-2020

rails new ....
rails db:create

# V and C of MVC!


methods get called by the route
route is the URL in the browser
controller gets data and calls the appropriate view

we will focus on the route!

$ rails s


/app/controllers/application_controller.rb

$terminal  1 server
$terminal  2 for file path

$ generate controller (same name as models, singular and descriptive) Home

# creates couple of files 
/app/controllers/home_controller.rb
/app/vies/home


#add method in the Home controller class 

class HomeController < applicationController

    def greeter
        render html: 'Yo'
    end

end

# route is going to describe
# it lives in a folder config
#./config/routes.rb

# get needs location and URL, what is happended to localhost:3000
get '/greeter' => 'home#greeter'
                #controllername#method


#browser  localhost:300/greeter



# another method (2) programmer

def programmer
    render html: 'We are Rails masters!'
end

get '/programmer' => 'home#programmer'
#browser  localhost:300/programmer


#method (3) Beverage

# /app/views/home/empty
# new file manually created: beverage.html.erb

def Beverage
    render 'beverage.html.erb'
end


# in beverage.html.erb
# i can type html and ruby

<h1> Hello world </h1>

<p> I like tea </p>

<ul> </ul>


# there's no get request!
get '/beverage' => 'home#beverage'


# => browser localhost/beverage


#  (4) new method
def tacos
    @my_tacos = 'carnitas'
    render 'tacos.html.erb'
end

#  new file app/views/home/tacos.html.erb
# matching the name of the method
create some html

# how I write embedded ruby <%= @my_tacos %>
<p> I like <%= @my_tacos %> tacos. </p>


get '/tacos' => 'home#tacos'


# (5) method

def landing
    render 'landing.html.erb'
end

# home/app/views/home/landing.html.erb

# ......html code


set the route as usual

get '/landing' => 'home#landing' #as usual
# I can also refer to root like this
get '/'

root to: 'home#landing'


# ruby method link_to  <%= link_to%>
code inside landig.html.erb

takes two arguments: 

# same as on click first argument:text, second path 
 <%= link_to 'Greeter', '/greeter' %>
 <br />
 <%= link_to 'Programmer', '/programmer' %>
 <br />
 <%= link_to 'Tacos', '/tacos' %>
 <br />
 <%= link_to 'Programmer', '/programmer' %>


# In the controller, i can have only the method if view and method have the same name


<a href='/tacos'>Tacos</a>




# CHALLENGES!!!!

# Working in pair

$ rails new myapp -d postgresql -T
$ cd myapp
$ rails db:create
$ rails server

#SECOND PERSON
$ rails bundle #for the second person to get all the gem files
$ rails db:create


CHALLENGES WITH AMANDA


branch: practice-filippo-amanda

jokes 

