// My dom is always listening for events

OnClick is one example


import React, { Component} from 'react'
import './App.css';



class App extends Component {
  
    constructor(props) {
        super(props)
        this.state={
            userInput:""
        }
    }

// e is short for event. events have their own built-in properties and methods
    handleChange = (e) => {
// I can console log e and see a tons of properties, one is target that refers to input
        // console.log(e) 
// going deeper
        // console.log(e.target)
// one level deeper
        console.log(e.target.value)
        this,this.setState({userInput: e.target.value})

    }

  render (){
  return (
    <>
      Sample Input
      <br/>
      <input
      type="text"
      value={this.state.userInput}
      onChange={this.handleChange}
     />
     {/* to see the update of state */}
     {this.state.userInput}
    </>
  )
}
}

export default App;