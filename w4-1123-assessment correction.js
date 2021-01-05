Interview Questions:


### React commenting:

2) establishes the initial values of state when components mounts.
3)

6) changes/set state 
setState () method it accepts an argument as an object
key:value pairs inside set state represents keys that exist in the state object
i can set multiple keys
spread operator of dicelog (array)
[... dicelog, newRoll]
... VS .push 
you can't push inside the setState method

7) render re runs only when state is updated using setState

9) passes the function handleRoll to the child component, and defines how the child will refer to that method
child component will refer to the method as {this.props.roll}



### code challanges

1) 
const fibonacci = () => {
    let result = [0,1]

for (let i=2; i <= 10; i++) {
    result.push(result[i-2] + result[i-1])
}
    return result.slice(1)
}