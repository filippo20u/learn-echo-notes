HTTP verbs

put/patch
post
delete
get

CRUD

update
create
delete 
read



Restful routes = representations

get  => index - all
        show  - one

delete => destroy

post => create

put/patch => update

get =>   new create & post
edit =>  update & put/patch



#Full Stack Rails

$rials new full_stack
$rails db:create

$rails generate model Herb name:string is_watered:string
$rails db:migrate

$rails c

Herb.create name 'Basil' , is_watered: 'yes'
Herb.create name 'Thyme' , is_watered: 'yes'
Herb.create name 'Oregano' , is_watered: 'yes'

Herb.all

$ rails generate controller Herb


# herb_controller.rb

class HerbController

    def index
        @herbs = Herb.all
    end

end

# routes.rb
do
get 'herbs' => 'herb#index'
end

# app/views/herb/index.html.erb
<h1> Herb Gardern </h1>

<%= @herbs %>

# Browser
# localhost:3000/herb

<ul>
<%= @herbs.each do |herb| %>
<li>
    <%= herb.name %>
</li>
<%= end %>

</ul>

# remove the equal signs to the code I don't want to display
<ul>
<% @herbs.each do |herb| %>
<li>
    <%= herb.name %>
</li>
<% end %>

</ul>


Second restful routes

def show
    @herb = Herb find(params[:id])
end


# show from syllabus, verb for view
do
get 'herb/id' => 'herb#show'
end

# show.html.erb

<h3><%= @herb.name %></h3>
<p> Is watered? <% @herb.is_watered %> </p>


# routes.rb
do
get 'herbs' => 'herb#index' , as: 'herbs'
get 'herb/id:' => 'herb#show' , as: 'herb'
end

# app/views/herb/index.html.erb
<h1> Herb Gardern </h1>

<%= @herbs %>

<ul>
<%= @herbs.each do |herb| %>
<li>
# link to creates links in the home
    <%= link_to herb.name, 
    herb_path(herb) %></li>
<%= end %>

</ul>


######### Second part  ########


Index see all the stuff
Show see one thing

- New  shows a form to create a new thing
- Create actually creates the new thing

- Eit shows a form to edit a thing
- Update - actually edits the thing

- Destroy - deletes the thing


#method for new


def new
    # helps to update that form to our new model
    @herb = Herb.new
end


#route 
get 'herb/new' => 'herb#new' , as: 'new_herb' #alias for that route

#new file new.html.erb

<% form_with model: @herb, local: true do |form|  %>

    <%= form.label :name %>
    <%= from.text_field :name %>
    <%= form.radio_button :is_watered, 'yes' %>
    <%= form.label :is_watered, 'Herb is watered' %>
    <%= form.radio_button :is_watered, 'no' %>
    <%= form.label :is_watered, 'Herb is not watered' %>
    <%= from.submit 'Add Herb'%>
    <%=%>

<% end %>


#error order is important


do
get 'herbs' => 'herb#index' , as: 'herbs'
get 'herb/new' => 'herb#new' , as: 'new_herb' #alias for that route
get 'herb/id:' => 'herb#show' , as: 'herb'
end


####new method create. it doesn't show anything is an action 

#introducing strong params, only columns that we expext to get changed, will be changed.
def create
    @herb = Herb.create(herb_params)
end

def herb_params #(model_params)
  params.require(:herb).permit(:name, :is_watered) 
            #   model         :column_name :column_name
end

do
get 'herbs' => 'herb#index' , as: 'herbs'
get 'herb/new' => 'herb#new' , as: 'new_herb' #alias for that route
get 'herb/id:' => 'herb#show' , as: 'herb'
post 'herbs' => 'herb#create'
end


def create
    @herb = Herb.create(herb_params)
    if @herb.valid?
        redirect_to herbs_path
    else 
        redirect_to new_herbs_path
    end
end



# destroy method

def destroy
    @herb = Herb.find(params[:id])
    if @herb.destroy?
        redirect_to herbs_path
    else 
        redirect_to herb_path(@herb)
        #reference of an alias define in the routes
    end
end

do
get 'herbs' => 'herb#index' , as: 'herbs'
get 'herb/new' => 'herb#new' , as: 'new_herb' #alias for that route
get 'herb/id:' => 'herb#show' , as: 'herb'
post 'herbs' => 'herb#create'
delete 'herbs/:id' => 'her#destroy', as: 'delete_herb'
end

#in the show.html.erb
                            # it needs a param
  <%= link_to 'Delete herb' , delete_herb_path(@herb),  method :delete  %>


# EDIT method


def edit
 @herb = Herb.find(params[:id])
end

do
get 'herbs' => 'herb#index' , as: 'herbs'
get 'herb/new' => 'herb#new' , as: 'new_herb' #alias for that route
get 'herb/id:' => 'herb#show' , as: 'herb'
post 'herbs' => 'herb#create'
delete 'herbs/:id' => 'her#destroy', as: 'delete_herb'
get 'herb/:id/edit' => 'herb#edit' , as 'edit_herb'
end


# views/edit.html.erb


<% form_with model: @herb, local: true, 
method: patch
do |form|  %>

    <%= form.label :name %>
    <%= from.text_field :name %>
    <%= form.radio_button :is_watered, 'yes' %>
    <%= form.label :is_watered, 'Herb is watered' %>
    <%= form.radio_button :is_watered, 'no' %>
    <%= form.label :is_watered, 'Herb is not watered' %>
    <%= from.submit 'Update Herb'%>
    <%=%>

<% end %>


def update
    @herb = Herb.find(params[:id])
   end



def create
    @herb = Herb.create(herb_params)
end

def herb_params #(model_params)
  params.require(:herb).permit(:name, :is_watered) 
            #   model         :column_name :column_name


check sarah nothes for the end of edit 