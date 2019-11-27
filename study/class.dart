/// 类

class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  num get right => left + width;
  set right(num value) {
    left = value - width;
  }

  num get bottom {
    return top - height;
  }

  set bottom(value) {
    top = value + height;
  }
}

main() {
  var rectangle = Rectangle(10, 10, 10, 10);
  print(rectangle.left);
  print(rectangle.top);
  rectangle.right = 5;
  rectangle.bottom = 20;
  print(rectangle.left);
  print(rectangle.top);
  print(rectangle.bottom);

  print(int.parse('20', radix: 2));
}

abstract class Doer {
  void doSomething();
}

class EffectiveDoer extends Doer {
  void doSomething() {
    print('doSomething');
  }
}
