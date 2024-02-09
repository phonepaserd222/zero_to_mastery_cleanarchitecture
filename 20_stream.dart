import 'dart:async';

void main(List<String> args) {
  final numberGenerator = NumberGenerator();

  StreamSubscription sub1 = numberGenerator.stream.listen((event) {
    print("sub1: $event");
  });

  late StreamSubscription sub2;

  Future.delayed(Duration(seconds: 5), () {
    sub2 = numberGenerator.stream.listen((event) {
      print("sub: ${event * event}");
    });
  });
  Future.delayed(Duration(seconds: 10), () {
    sub1.cancel();
    sub2.cancel();
  });
}

class NumberGenerator {
  int _counter = 0;

  StreamController<int> _controller = StreamController<int>.broadcast();

  Stream<int> get stream => _controller.stream;

  NumberGenerator() {
    final Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
      // sent a event over the stream every second
      _controller.add(_counter);
      // _controller.add(0);

      _counter++;
    });

    Future.delayed(Duration(seconds: 10), () {
      // closes the stream and timer after 10 seconds
      timer.cancel();
      _controller.close();
    });
  }
}
