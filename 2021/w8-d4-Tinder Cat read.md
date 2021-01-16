Index and show functionality




# routing: home page to show index

I have this.state.cats and I need to pass it into CatIndex

<Routhe path='/catindex'
  render= { (props) => < CatIndex cats={ this.state.cats} /> }
/>

CatIndex.js :

# React gives an error and so I need index and not only the cat(value)

{this.props.cats.map(cat, index => {
  return (
    <p key={index}>  {cat.name} </p>
    )
  })}


# 2) Adding route for CatShow

<Route
  path='/catshow/:id'
  render = {(props) =>
    let id = props.match.params.id
  }
