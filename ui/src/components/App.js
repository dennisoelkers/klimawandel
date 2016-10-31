import React from 'react';

import { Navigation } from 'components';

class App extends React.Component {
  render() {
    return (
      <span>
        <Navigation />
        {this.props.children}
      </span>
    );
  }
}

export default App;
