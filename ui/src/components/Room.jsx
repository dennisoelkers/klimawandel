import React from 'react';

const Room = React.createClass({
  propTypes: {
    room: React.PropTypes.object.isRequired,
  },

  render() {
    const room = this.props.room;
    const devices = this.props.devices.filter(device => device.room_id === room.id);
    const deviceSummaries = devices.map(device => <li key={`device-${device.id}`}>
      {device.name} <small>{device.actual}°C (Target: {device.target}°C)</small>
    </li>);
    return (
      <span style={{ borderLeftColor: '#aa6708', display: 'block', borderLeftStyle: 'groove', paddingLeft: '1em' }}>
        <h4>{room.name} <small>Target Temperature: {room.target}°C</small></h4>
        <h5>
          <ul>
            {deviceSummaries}
          </ul>
        </h5>
      </span>
    );
  },
});

export default Room;
