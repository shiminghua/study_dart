import 'dart:math';

class Person {
  String firstName;

  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Employee extends Person {
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }
}

main() {
  var emp = new Employee.fromJson({});
  print(emp);
  if (emp is Person) {
    emp.firstName = 'Bob';
    print(emp.firstName);
  }
  (emp as Person).firstName = 'each';
  print(emp);

  var p = new Point(3, 4);
  print(p.distanceFromOrigin);

  var immutablePoint = new ImmutablePoint(3, 4);
  print(immutablePoint.x);
  print(ImmutablePoint.origin.x);
}

class Point {
  final num x;
  final num y;
  final num distanceFromOrigin;

  Point(x, y)
      : x = x,
        y = y,
        distanceFromOrigin = sqrt(x * x + y * y);
}

class Point2 {
  num x;
  num y;

  Point2(this.x, this.y);

  Point2.alongXAxis(num x) : this(x, 0);
}

class ImmutablePoint {
  final num x;
  final num y;

  const ImmutablePoint(this.x, this.y);
  static final ImmutablePoint origin = const ImmutablePoint(0, 0);
}
