void main() {
  Rectangle rectangle = Rectangle(5.0, 10.0);
  Triangle triangle = Triangle(4.0, 6.0);

  print('Area of Rectangle: ${rectangle.area()}');
  print('Area of Triangle: ${triangle.area()}');

  print("***********example 2 ************");
  Tesla teslaCar = Tesla('Tesla Model S', 79999.99);
  Model3 model3Car = Model3('Tesla Model 3', 49999.99, 'Red');

  teslaCar.display();
  model3Car.display();
}

class Shape {
  double diameter1;
  double diameter2;

  Shape(this.diameter1, this.diameter2);
}

class Rectangle extends Shape {
  Rectangle(double width, double height) : super(width, height);

  double area() {
    return diameter1 * diameter2;
  }
}

class Triangle extends Shape {
  Triangle(double base, double height) : super(base, height);

  double area() {
    return 0.5 * diameter1 * diameter2;
  }
}

class Car {
  String name;
  double price;

  Car(this.name, this.price);
}

class Tesla extends Car {
  Tesla(String name, double price) : super(name, price);

  void display() {
    print('Car Name: $name, Price: \$${price.toStringAsFixed(2)}');
  }
}

class Model3 extends Tesla {
  String color;

  Model3(String name, double price, this.color) : super(name, price);

  void display() {
    print(
        'Car Name: $name, Price: \$${price.toStringAsFixed(2)}, Color: $color');
  }
}


