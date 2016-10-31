import React from 'react';
import { PageHeader } from 'react-bootstrap';

import RoomsList from './RoomsList';

class Overview extends React.Component {
  render() {
    return (
      <span>
        <div className="container">
          <PageHeader>Overview <small>See all rooms</small></PageHeader>
          <RoomsList/>
        </div>
      </span>
    );
  }
}

export default Overview;
