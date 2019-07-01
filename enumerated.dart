/// enumerated types
enum Color1 {
  red,
  blue,
  green,
}

main() async {
  print(Color1.blue);
  print(Color1.red.index);

  print(Color.red);
  print(Color.red.name);

  var version = await lookUpVersion();
  
  print(await lookUpVersion());
  print(lookUpVersion());
  print('111111');
  printHello();
}

class Color {
  static const red = const Color('red');

  final String name;

  const Color(this.name);
}

abstract class Cache<T> {
  T getByKey(String key);
  setByKey(String key, T value);
}

lookUpVersion() async {
  print('2.1.1');
  return '1.0.0';
}

printHello() {
  print('Hello');
}
