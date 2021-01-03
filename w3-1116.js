React Props  Rachael 11-16-2020
https://github.com/learn-academy-2020-echo/Syllabus/blob/master/react/props.md

Props are properties passed downstream.

import React, {COmponent} from 'React'

class App extends Component{
    constructor(props){
    super(props)
    this.state={
      item1:"Eggo waffles",
      item2."Wine"
      }
    }

  render(){
  return(
  <>
  groceries
  {this.state.item1} this will work!
  </>
  )
  }
}

### new folder Conmponents
### new file  GroceryItem.js

import React, {component} from 'react'
import GroceryItem from './Conmponents/GroceryItem'

class GroceryItem extends Component{
  render() {
  return (
    <>
      to buy:
      <GroceryItem name={this.state.item1} />
      <GroceryItem name={this.state.item2} />
    </>


  )
  }
}

export default App


#### I can also write:


class App extends Component{
    constructor(props){
    super(props)
    this.state={
      items:[
        "Eggos",
        "Wine",
        "Cheese",
        "Lemons",
        "Oatmeal",
        ]
      }
    }


    satHello = () => {
      alert ("hello")
    }


    render(){
    return(
    <>
    groceries

    {this.state.items.map(item => <GroceryItem name={item} /> )}

    <GroceryItem name={this.state.items[0]} />

    satHello={this.satHello}
    </>
    )
    }
  }



  #### in my GroceryItem.js

  <button onClick={this.props.satHello}>
    Click me!!
    </button>




######## Afternooon######################


// upstream information


