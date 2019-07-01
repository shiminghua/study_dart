import 'dart:math';

class Point {
  num x;
  num y;

  Point(this.x, this.y);

  num distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

main() {
  var point1 = new Point(3, 4);
  var point2 = new Point(6, 8);
  print(point1.distanceTo(point2));

  var rect = new Rectangle(3, 4, 20, 15);
  print(rect.right);
  rect.right = 12;
  print(rect.left);

  var effectiveDoer = new EffectiveDoer();
  effectiveDoer.doSomething();

  print(greetBob(new Person('kathy')));
  print(greetBob(new Imposter()));
}

class Rectangle {
  num top;
  num left;
  num width;
  num height;

  Rectangle(this.top, this.left, this.width, this.height);

  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

/// abstract methods 抽象函数
abstract class Doer {
  void doSomething();
}

class EffectiveDoer extends Doer {
  void doSomething() {
    print('effective doer');
  }
}

// 接口
class Person {
  final _name;

  Person(this._name);

  String greet(who) => 'Hello, $who. I am $_name.';
}

class Imposter implements Person {
  final _name = '';

  String greet(who) => 'Hi $who. Do you know who i am?';
}

greetBob(Person person) => person.greet('bob');