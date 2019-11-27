/// 运算符
///
///

void main() {
  const value = 8; // 01000
  const bitmask = 7; // 00111
  const nine = 9; // 01001

  print(value & bitmask);
  print(value & nine);
  print(~value);
  print(~nine);
  print(~0);
  print(11000);

  assert(10 > 11, '11111');

  // throw '错误提示';

  var point = Point(1, 2, 3);
  point.x = 2;
  print(point.x);
  print(point.y);
  print(point.z);
  // print(point.a);

  var point2 = Point.origin();
  print(point2.x);

  var point3 = Point.fromJson({'x': 2, 'y': 3});
  print(point3.x + point3.y);

  var point4 = Point.alongXAxis(4);
  print(point4.x);
  print(point4.y);

  var immutablePoint = ImmutablePoint(0, 0);
  var immutablePoint2 = ImmutablePoint(1, 1);
  // immutablePoint.x = 2;
  print(immutablePoint.x);
  print(immutablePoint2.x);

  var myMap = {
    'x': 1,
    'y': 2,
    3: 'aa',
    // z: 3,
  };

  print(myMap);

  var logger = Logger('UI');
  var logger2 = Logger('UI');
  print(logger.name);
  print(logger2.name);
  print(logger.toString());
  print(logger.runtimeType);

  var list = [
    1,
    'a',
    false,
    logger,
    {'a': 1},
  ];

  print(list);
  print(list.runtimeType);

  var list2 = <dynamic>[1, 2, 3, 'a', false, logger];
  print(list2.runtimeType);
}

class Point {
  num x;
  num y;
  num z = 0;

  // Point(num x, num y, num z) {
  //   this.x = x;
  //   this.y = y;
  //   this.z = z;
  // }

  Point(this.x, this.y, this.z);

  Point.origin() {
    x = 0;
    y = 0;
    z = 0;
  }

  Point.fromJson(Map<String, num> json)
      : x = json['x'],
        y = json['y'] {
    print('In Point.fromJson(): ($x, $y)');
  }

  Point.alongXAxis(num x) : this(x, 0, 0);
}

class ImmutablePoint {
  final x;
  final y;
  const ImmutablePoint(this.x, this.y);
}

class Logger {
  final String name;
  bool mute = false;

  static Map<String, Logger> _cache = <String, Logger>{};

  Logger._internal(this.name);

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  void log(msg) {
    print(msg);
  }
}
