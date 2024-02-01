void main() {
  Car car1 = Car();
  car1.color = "red";
  Car car2 = Car();
  car2.color = "blue";
}

class Car {
  //! attributes can be added here
  late String color;

// ! more methods can be added here
  void drive() {
    print("car is moving");
  }

  void whichColor() {
    print("car color: ${this.color}");
  }
}
