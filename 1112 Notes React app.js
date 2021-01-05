// cd desktop
// create-react-app



// ### ORIGINAL CODE WORKING

import React, { Component } from 'react'

class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      count: 0
      banana: "banana"
    }
  }


  addOne = () => {
    //   alert("Yo") just Sarah "hello world"
    // this.setState react method to update the state, always use setState
    // this.setState({ count: 1}) this works but not what I want
    this.setState({ count: this.state.count + 1 })
  }


  render() {
    return (
      <>

        <h2>Counter: { this.state.count }</h2>
        <p>Banana {this.state.banana}</p>
        <button> onClick = {this.addOne}</button>
      </>
    )
  }
}

export default App





// ### REFACTORING

// create a new folder called components
// inside counter.js



import React, { Component } from 'react'

class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      count: 0
      banana: "banana"
    }
  }


  addOne = () => {
    //   alert("Yo") just Sarah "hello world"
    // this.setState react method to update the state, always use setState
    // this.setState({ count: 1}) this works but not what I want
    this.setState({ count: this.state.count + 1 })
  }


  render() {
    return (
      <>

        <p>className=Counter: { this.state.count }</p>
        <p>Banana {this.state.banana}</p>
        <button> onClick = {this.addOne}</button>
      </>
    )
  }
}

export default App


// #### Add styling for challenges

<p> className="counter" </p>     define the name
// don't code index.css, use App.css
// import './App.css'  needed to pick CSS in App.js

// .counter {
//     color:pink;
// }


// in line styling:
<button> 
    onClick = {this.addOne}
    style={{backgroundColor: "orange"}}
    > Remove One
</button>