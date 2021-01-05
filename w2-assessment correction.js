// ### React challenge

// I need a fragment or div to return
### 1 "React.fragment" missing or "<> </>"

// below another way to destructure instead of writing "this.state"
// let {moods} = this.state
###2 this.setState({ currentMood: "this.state".moods[randomIndex] })
###3 <button onClick={ "this."handleMoodOptions }>


### Interview questions

1 super calls the constructor of the parent class, only in a react component if it has a constructor. with a super you require super()

2 Virtual DOM

3
render
return
div/enclosing tag
"hello world
import react and export class

Elements are anything that is displayed to the dom. Such as a Div, or P tag, H1, etc.
 Return/Render are not considered elements necessarily.

4 JSX

JSX is JS flavored HTML
className rather than calss since


5 state
(look more)

6
functions and declarations are brought to the top of the page so that thet can be used in any order.


Coding challenges

1 ok

2 value[0].upperCase() + value.substr(1)
// alternative method, less specificity, I can add how many characters I want back
  string.charAt(0).toUpperCase() + string.slice(1)

3
const sortedArray = (array) => {
    let numsOnly = array.filter(value =>{
      return typeof value === "number"
      return numsOnly.sort(function(a,b){return a-b})
}

console.log(numsOnly(mixedDataArray))

4

// function takes string and logs index of first vowel


5

const calculater (num1,symbol,num2) =>
  if (symbol === "*") {
    return num1*num2
  } else if (symbol === "+") {
    return num1+num2
    else if (symbol === "-") {
    return num1-num2
  } else if (symbol === "/" && num2 === 0) {
    return "can't divide by 0"
  } else if  (symbol === "+") {
    return num1/num2
  }
