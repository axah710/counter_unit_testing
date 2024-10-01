class Counter {
  int _countValue = 0;

  int get countValue => _countValue;

  void incrementCounter() {
    _countValue++;
  }

  void decrementCounter() {
    _countValue--;
  }
}
