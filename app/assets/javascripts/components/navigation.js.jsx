var Navigation = React.createClass({

  render: function() {
    return (
      <header className="main-header">
        <h1>Cheese!</h1>
          <img src="http://content.science20.com/files/images/not%20GMO%20vegan%20cheese%20but%20could%20you%20tell%20anyway.jpg"/>
          <nav>
            <div className="row">
              <div className="col s3">
                <a href="/">Home</a>
              </div>
              <div className="col s3">
                <a href="http://localhost:3000/cheeses">Cheeses</a>
              </div>
              <div className="col s3">
                <a href="http://localhost:3000/usercheeses">Favorites</a>
                </div>
                <div className="col s3">
                  <a href="http://localhost:3000/users">Users</a>
                </div>
              </div>
            </nav>
        </header>
    );
  }
});
