// ### React forms

// -collection of inputs
// -forms are submitted as single entity
// -From will be in its own component



import React, { Component } from 'react'
import Form from './Components/Form'
import './App.css';

class App extends Component {
  
  constructor (props) {
  super (props)
    this.state = {
      // null falsey value
        personData: null
    }
  }

    handleFormUpdate = (form) => {
      // console.log(form)
      this.setState({ personData: form})
    }

    <React.Fragment>

    <Form
    
    handleFormUpdate={this.handleFormUpdate}
    />
    ### conditional rendering ####
    {this.state.personData && 
    <div>
      <p> first Name:
        {this.state.personData.firstName}</p>
      <p> Last name:
        {this.state.personData.lastName}</p>
      <p> age:
        {this.state.personData.age}</p>
    </div>
     }

    </React.Fragment>
  )
  }
}

export default App;


// ####Form.js
// Created a child component named Form
// Added a state object with one key:value parseIntKey - form, value - object with inputs


// -form is going to hold state
//  Form is an exception, 


import React, { Component } from 'react'

class Form extends Component {
  constructor(props)
  super(props)
  this.state ={
    form: {
      firstName: "",
      lastName: "",
      age: ""
    }
  }
}
  
// handleChange method


###### super!!!!!!! resusable method ############# 

// 
  handleChange = (e) => { 
    console.log(e.target)
    let {form} = this.state
    // destructre amy state above and log it
    // console.log(form)
    // square bracket VS dot notation
    form[e.target.mane] = e.target.value
    this.setState({ form:form})
    // same as
    // form.firstName = whaterver the user is typing in
    // form["firstName"]
  }


// #### handleSubmit method

    handleSubmit = (e) => {
      e.preventDefault()
      // console.log(this.state.form)
      this.props.handleFormUpdate(this.state.form)

  }






  render () {
    return (
     <React.Fragment>
       {/* form tag that describes a collection of inputs */}
       <form>

       <label>Enter your first name:</label>  
        <input 
         type="text"
         value={this.state.form.firstName}
         name="firstName"
         onChange={ this.handleChange }
        />

        <br/>

        <label>Enter your last name:</label>  
        <input
          type="text" 
          value={this.state.form.lastName}
          name="lastName"
          onChange={ this.handleChange }
        />

        <br/>

        <label>Enter your age:</label>  
        <input 
          type="text"
          value={this.state.form.age}
          name="age"
          onChange={ this.handleChange }
        />

        <br/>

        <input 
        type="submit"
        onClick={ handleSubmit }
        />

       </form>


     </React.Fragment>
    )
  }
}

export default Form