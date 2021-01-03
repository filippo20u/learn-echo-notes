# // create an app as usual
# // $ rails db:create

# // $ rails generate controller Main

# // main_controller.rb

# // app/controllers/main_controller
# // app/views/ main  "empty"

//  Main_controller.rb

    def tacos
        @my_taco = 'carintas'
    end

end

// config/routes.rb
get "/tacos" => 'main#tacos'

# tacos.html.erb

# <h1> Hello world <h1/>
# I like <%= @my_taco%>


# updating method with a variable
def tacos
    @my_taco = params[:my_taco]
end

# passing the variable in the URL
# localhost:3000/tacos?my_taco=fish


# Params!!!!! ##########

# in the routes.rb file
get "/tacos/:my_taco" => 'main#tacos'

# passing the variable in the URL
# localhost:3000/tacos/fish
# automatic return as a string


def numbers
    @num1 = params[:num1]
    @num2 = params[:num2] 
end

# numbers.html.irb

<h1> numbers <h1/>

<p>  
 this is number1: <%= num1%>
    this is number2: <%= num2%>

</p>

# routes

get '/numbers/:num1/:num2' => 'main#numbers'

# localhost:3000/numbers/2/4


def numbers
    @num1 = params[:num1]
    @num2 = params[:num2] 
    if @num1.to_i < @num2.to_i
        @output = 'You win'
    else
        @output = 'you lose'
        
    end
end

# numbers.html.irb

<h1> numbers <h1/>

<p>  
 this is number1: <%= @num1 %>
 this is number2: <%= @num2 %>

 the output is:  <%= @output%>

</p>