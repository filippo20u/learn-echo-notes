//blueprint 
class  HomeLoan {
  constructor (){
      this.name = "my house"
      this.payDate= "3rd"
      this.debt = 300000
  }


// own ScopedCredential, pascal case
// constructor local to the scope of the class

//sibgle instance of my class



// class Triangle {
//     constructor () {
//         this.side1 =
//         this.side2 =
//         this.side3 = 
//     }
// }

// Blueprint = Planimetria
// Classes : data and behaviour

makePayment () {
    this.debt -+ 1000
}

missPayment () {
    this.debt += 200
}
}
// single instance of my class

var rachaelsHouse = new HomeLoan ()
rachaelsHouse.makePayment()
rachaelsHouse.makePayment()
rachaelsHouse.makePayment()
rachaelsHouse.makePayment()
rachaelsHouse.missPayment()

console.log(rachaelsHouse.debt);

// var rachaelsHouse = new HomeLoan ()
// console.log(rachaelsHouse);

// var andeesHouse = new HomeLoan ()
// console.log(andeesHouse);

var showInfo = currentLoans.map(value =>)

//no constructor = no object
class Person {
  takeOutLoan() {
      return this.debt
  }
}

var me = new Person ()
me.takeOutLoan()

