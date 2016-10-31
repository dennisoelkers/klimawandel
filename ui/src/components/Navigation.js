import React from 'react';
import { Nav, Navbar, NavItem } from 'react-bootstrap';

class Navigation extends React.Component {
  render() {
    return (
      <Navbar inverse>
        <Navbar.Header>
          <Navbar.Brand>
            <a href="#">klimawandel</a>
          </Navbar.Brand>
          <Navbar.Toggle />
        </Navbar.Header>
        <Navbar.Collapse>
          <Nav bsStyle="pills" activeKey={1}>
            <NavItem eventKey={1} title="Overview">Overview</NavItem>
            <NavItem eventKey={2} title="Schedules">Schedules</NavItem>
          </Nav>
        </Navbar.Collapse>
      </Navbar>
    );
  }
}

export default Navigation;
