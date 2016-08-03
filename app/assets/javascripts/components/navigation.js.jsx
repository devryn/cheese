var Navigation = React.createClass({

  render: function() {
    return (
      <header className='main-header'>
      <h1>Cheese!</h1>
        <img src="http://content.science20.com/files/images/not%20GMO%20vegan%20cheese%20but%20could%20you%20tell%20anyway.jpg"/>
      <nav>
      <a href="/">Home</a>
      <a href="http://localhost:3000/cheeses">Cheeses</a>
      <a href="http://localhost:3000/usercheeses">Favorites</a>
      </nav>
    </header>
    );
  }
});
