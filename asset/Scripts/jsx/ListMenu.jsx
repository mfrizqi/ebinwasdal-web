var destination = document.querySelector("#container");
var Home = React.createClass({
    render: function() {
        return (
          <div>
            <h2>HELLO</h2>
            <p>Cras facilisis urna ornare ex volutpat, et
        convallis erat elementum. Ut aliquam, ipsum vitae
        gravida suscipit, metus dui bibendum est, eget rhoncus nibh
        metus nec massa. Maecenas hendrerit laoreet augue
        nec molestie. Cum sociis natoque penatibus et magnis
        dis parturient montes, nascetur ridiculus mus.</p>
  
        <p>Duis a turpis sed lacus dapibus elementum sed eu lectus.</p>
      </div>
        );
    }
});

var App = React.createClass({
    render: function() {
        return (

                  <div className="sidebar-nav navbar-collapse">
                    <ul className="nav" id="side-menu">
                        <li id="Menu">
                            <div><a href="index.html"><i classname="fa"></i> NIPL</a></div>
                        </li>
                        <li>
                            <a className="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span classname="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="flot.html">Flot Charts</a>
                                </li>
                                <li>
                                    <a href="morris.html">Morris.js Charts</a>
                                </li>
                            </ul>
                        </li>
                        <li classname="active">
                            <a href="#"><i classname="fa fa-files-o fa-fw"></i> Sample Pages<span classname="fa arrow"></span></a>
                            <ul classname="nav nav-second-level">
                                <li>
                                    <a classname="active" href="blank.html">Blank Page</a>
                                </li>
                                <li>
                                    <a href="login.html">Login Page</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
          </div>
           
      );
    }
});


ReactDOM.render(
  React.createElement(App, null),
  document.getElementById('root')
);

ReactDOM.render(
  <ReactRouter.Router>
    <ReactRouter.Route path="/" component={App}>
        <IndexRoute component={Home} />
    </ReactRouter.Route>
  </ReactRouter.Router>,
destination
);