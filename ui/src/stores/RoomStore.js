import Reflux from 'reflux';

const RoomStore = Reflux.createStore({
  listenables: [],
  url: 'http://localhost:3000/rooms',
  init() {
    fetch(this.url).then((response) => {
        response.json().then((json) => {
          this.rooms = json;
          this.trigger(json);
      });
    });
  },
  getInitialState() {
    return this.rooms;
  }
});

export default RoomStore;
