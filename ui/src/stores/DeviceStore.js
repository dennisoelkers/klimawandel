import Reflux from 'reflux';

const DeviceStore = Reflux.createStore({
  listenables: [],
  url: 'http://localhost:3000/devices',
  init() {
    fetch(this.url).then((response) => {
      response.json().then((json) => {
        this.devices = json;
        this.trigger(json);
      });
    });
  },
  getInitialState() {
    return this.devices;
  }
});

export default DeviceStore;
