// Objects 11/6/2020

//primitiv data types:

//arrays - collections of data [1,2,3 [4,5,6]]  --> 4
// arrays are technically Objects


//object is a collection of data, sets of key value pairs

//{key: "value"}
//can have multiple jey value pairs, comma separated
//{key: "value", key2: "value2", key3: "value3"}
//container of static data
//can be saved as variables
//var myObject = {key: "value", key2: "value2", key3: "value3"}
//console.log(myObject)

//keys inside an object are data type symbol
//value inside an object
//any data type of JS can be a value inside an object

// var breakfastItems = { item1:"eggs", item2:"bacon", item3:"toast"}
// console.log(breakfastItems);
// //everything wrapped inside the curly braces is a set of data, like an array
// //dot notation to get only one object
// console.log(breakfastItems.item1);

var breakfastItems = {
  item1:"eggs",
  item2:"bacon",
  item3:"toast",
  item4:{
    fruit1:"banana",
    fruit2:"blueberry",
    fruit3:"strawberry"
  }
}
//console.log(breakfastItems.item4);
//if I want just blueberry
console.log(breakfastItems.item4.fruit1);
//console.log(breakfastItems.fruit2); this will not work, it doesn't have a reference

//destructuring one object
let {fruit1} = breakfastItems.item4
//console.log(fruit1);  this console log it will not work, there's no reference
//line 45 define a variable inside the var breakfastItems

//destructuring multiple keys of a nested Object
let {fruit1, fruit2, fruit3} = breakfastItems.item4
//line 48 will also work giving back the three elements

//!!Object can also contain functions, in this case they are called methods
// Methods are functions that belong to an Object
// Objects can contain static infromation (data) and functions/methods
//Objectsare the intesection between data and behaviour

var numsObj = {
  num1:5,
  num2:10,
  num3:15,
  addUp:function(){
      return  this.num1 +this.num2 + this.num3
  }
}
//logging stating data
console.log(numsObj.num1);
//logging the output of a method, or behavior
console.log(numsObj.addUp());

//function vs fat arrow + they do the same thing most of the time
function myFunction (){
  return "Here is my function"
}
console.log(myFunction());

myFunction = () => {
  return "Here is my function"
}
console.log(myFunction());

//-----------------------------------------------------------------------------


//arrray in an arrays
[1,2,3,4,[4,5,6]]

var cashMoney = [
  {worth: 1,person:"George"},
  {worth:5, person:"Lincoln"},
  {worth:10, person:"Alex"},
  {worth:20, person:"Adrew"}
]

console.log(cashMoney.length);

//writing a function that take dataset and printout an array of Objects

const bios = (array) =>{
  array.map(value =>{
  console.log(value.person, value.worth);
  })
}
console.log(bios(cashMoney));

//console.log(cashMoney.person); ---> undefined, it's an array


var cashMoney = [
  {worth: 1,person:"George"},
  {worth:5, person:"Lincoln"},
  {worth:10, person:"Alex"},
  {worth:20, person:"Adrew"}
]

//replace with string interpolation to have a more interesting output
const bios = (array) =>{
  return array.map(value =>{
    return `Good ol' ${value.person} is one the ${value.worth} dollar bill`
  })
}
console.log(bios(cashMoney));




//Sidebar bracket notation fun part!!!!!!!!!!!!!!!!!

var person = {
  firstName: "Sherlock",
  lastName: "Holmes"
}

//dot notation VS bracket notation
console.log(person.firstName);
console.log(person["firstName"]);
