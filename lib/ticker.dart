// expose a tick function which takes the number of ticks(secons) we want and
// returns a stream which emits the remaining seconds every second

class Ticker {
  const Ticker();
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(Duration(seconds: 1), (x) => ticks - x - 1);
  }
}
