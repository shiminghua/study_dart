// 定义一个方法
printNumber(num aNumber) {
  print('The number is $aNumber');
}

// 主函数，这是程序执行的入口
main() {
  // 定义并初始化一个变量
  var number = 86;
  // 调用一个方法
  printNumber(number);

  int lineCount;
  assert(lineCount == 1);

  var s = r'aaaaaaaa \n aaaaa';
  var s2 = 'aaaaaaaa \n aaaaa';
  print(s);
  print(s2);

  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(input));

  print(new Object().toString());

  for (var i in naturalsTo(10)) {
    print(i);
  }
}

naturalsTo(n) sync* {
  var k = 0;
  while (k < n) {
    yield k++;
  }
}
