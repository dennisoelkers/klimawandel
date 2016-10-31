import React from 'react';
import Reflux from 'reflux';

import DeviceStore from 'stores/DeviceStore';
import RoomStore from 'stores/RoomStore';

import Room from 'components/Room';
import Spinner from 'components/Spinner';

const RoomsList = React.createClass({
  mixins: [
    Reflux.connect(RoomStore, 'rooms'),
    Reflux.connect(DeviceStore, 'devices')
  ],
  render() {
    if (!this.state.devices || !this.state.rooms) {
      return <Spinner />;
    }
    const devices = this.state.devices;
    const rooms = this.state.rooms ? this.state.rooms.map((room) => <Room key={'room-' + room.name} room={room} devices={devices}/>) : 'Loading ...';
    return (
      <span>
        {rooms}
      </span>
    );
  },
});

export default RoomsList;
