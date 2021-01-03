$ rails new classroom -d postgresql -T
$ rails db:create
$ bundle add rspec-rails
$ rails generate rspec:install


$ rails generate resource Student name:string cohort:string

#resource create controller, view, model

config/routes.rb
resources :students

rails c
Student.create name: "Rachael" , cohort: 'Delta'
Student.create name: "Drew" , cohort: 'Charlie'
Student.create name: "Alan" , cohort: 'Echo'
Student.create name: "Fuffi" , cohort: 'Delta'

rails s

$rails routes #to see all teh routes

routes is taken care of

controller

def index
    students = Student.all
    render json: students
    #like herbs, it doesn't have to be an instance variable
end


#open postman
#plus sign

url bar, drop down menu, 

headers
expectation of what type of data
key: Content-type
value: application/json

GET: localhost:3000/students
I can see all





# request 2 for show method

def show
    student = Student.find(params[:id])
    render json: student
end


get localhost:3000/students/1 #id

get back one student

get localhost:3000/students


def create
    student = Student.create(student_params) #method I have to create
    if student.valid? 
        render json: student
    else
        render json: student.errors #rspec testing      
    end
end


private #prevent my method
def student_params
    params.require(:student).permit(:name, :cohort)
end


# postman
# tab body
#raw   JSON
#create an object
{
    'student': {
        'name': "Ryan",
        "cohort": "Echo"
    }
}

#POST
#output looks like HTML

concerns/application-controller #same folder as student

#add a line, so teh dataabse can accept requests from an outside source
skip_before_action :verify_authenticity_token



#DESTROY (wrong siyntax)

def destroy 
    student = Student.find(params[:id])
    if student.destroy
    render json: student
    else
    render json: student
    end
end

#Postman

DELETE

localhost:3000/students/2

to double check

GET local...   /students for the array



#UPDATE

def update
    student = Student.find(params[:id])
    student.update(student_params)
    if student.valid?
    render json: student
    else
    render json: student.errors
    end
    
end



patch localhos../students/3




WIldlife tracker


routes for sightings
foregiegn key animal_id
last story, manipulate url