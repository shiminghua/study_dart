/// dart 示例

// 输出数字的函数
printInteger(int aNumber) {
  print('The number is ${aNumber}');
}

// 程序执行入口
main() {
  var number = 40;
  printInteger(number);

  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(input));

  doStuff();

  printElement(element) {
    print(element);
  }

  var list = [1, 2, 3, 4, 5];
  list.forEach(printElement);

  list.forEach((i) {
    print('$i: ${list.indexOf(i)}');
  });

  print(5 / 3);
  print(5 ~/ 3);

  var message = new StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
    print('!');
  }

  var callbacks = [];
  for (var i = 0; i < 5; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((fn) => fn());

  var collection = [0, 1, 2, 3];
  for (var i in collection) {
    print(i);
  }

  print(message.runtimeType);
}

void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather',
    }}) {
  print('list: $list');
  print('gifts: $gifts');
}

var one = int.parse('1');
var onePointOne = double.parse('1.1');

String oneAsString = 1.toString();
String piAsString = 3.14159.toStringAsFixed(2);

// (3 << 1) == 6; 0011 << 1 == 0110;
// 3 >> 1 == 1;   0011 >> 1 == 0001;
// 3 | 4 == 7；   0011 | 0100 == 0111;
const aConstList = const [1, 2, 3];
