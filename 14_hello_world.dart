void main() {
  Car car1 = Car();
  car1.color = "red";
  Car car2 = Car();
  car2.color = "blue";

  car1.whichColor();
  car2.whichColor();
  car1.drive();
}

class Car {
  //! attributes can be added here
  late String color;

// ! more methods can be added here
  void drive() {
    print("$color car is moving");
  }

  void whichColor() {
    print("car color: $color");
  }
}
