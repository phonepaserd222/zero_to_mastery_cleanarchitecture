void main() {
  Car car1 = Car();
  car1.setColor = "red";
  Car car2 = Car();
  car2.setColor = "blue";
  String colorFromCar1 = car1.color;
  print("color from car 1 : $colorFromCar1");
  car1.whichColor();
  car2.whichColor();

  car2.drive();
}

class Car {
  //  attributes can be added here
  late String _color;

  set setColor(String color) {
    this._color = color;
  }

  String get color => this._color;

//  more methods can be added here
  void drive() {
    print("car is moving");
  }

  void whichColor() {
    print("car color: ${this._color}");
  }
}
