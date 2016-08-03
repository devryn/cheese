var Fave = React.createClass({

  getInitialState: function () {
    return {
      currentCheese: this.props.currentCheese,
      loading: false
    };
  },

  sendCheese: function (n, event) {
    this.setState({
      loading: true
    });
    var u = this.props.usercheese;
    var url = ["/usercheeses", u.cheese_id, "usercheeses", u.id, "cheeses"].join("/");
    $.ajax({
      url: url,
      method: "POST",
      data: {
        cheese: {
          user_id: this.props.user.id
        }
      }
    }).done(function (response) {
      this.setState({
        currentCheese: cheese,
        loading: false
      });
    }.bind(this));
  },

  render: function() {
    return (<a className="favorite btn">F</a>avorite</a>;
  }
});
