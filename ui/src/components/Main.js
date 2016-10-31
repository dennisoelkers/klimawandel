require('normalize.css/normalize.css');
require('styles/App.css');

import React from 'react';
import { Nav, Navbar, NavItem, PageHeader } from 'react-bootstrap';
import { IndexRoute, Router, Route, browserHistory } from 'react-router';

import { App, Navigation, Overview } from 'components';

class AppComponent extends React.Component {
  render() {
    return (
      <Router history={browserHistory}>
        <Route path="/" component={App}>
          <IndexRoute component={Overview} />
        </Route>
      </Router>
    );
  }
}

AppComponent.defaultProps = {
};

export default AppComponent;
