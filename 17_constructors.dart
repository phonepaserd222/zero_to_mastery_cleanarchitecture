void main() {
  final Car blueCar = Car(color: 'blue', engine: 'v8');
  print(blueCar.color);
}

class Car {
  Car({required this.color, required this.engine});
  //! attributes
  final String color;
  final String engine;

// !  methods
  void drive() {
    print("$color car is moving");
  }

  void whichColor() {
    print("car color: $color");
  }
}
