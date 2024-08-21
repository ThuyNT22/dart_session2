import 'dart:math';

import 'package:session2/session2.dart' as session2;

String randomString = "test123";
//late: khi nao dung moi khoi tao

void nullSafeFunction() {
  print(randomString);
  String test; // -> later init
  test = "test string";
  //khong require khi khai bao, require gia tri khi dung
  //java data null >> object (String, Integer...)
  //Dart null !=Integer, String, Double
  print(("Test value: $test"));
}

void funcLateDemo() {
  late String test = genRandomString(10); //1=>2
  print("Do something else"); //2=>1
  print(test); //3
}

Random _random = Random();
String _allChars = "abcdefghiklmnopquvxyz1234567890";
String genRandomString(int length) {
  print("Go into function genRandomString");
  return String.fromCharCodes(Iterable.generate(
      length, (_) => _allChars.codeUnitAt(_random.nextInt(_allChars.length))));
}

void main(List<String> arguments) {
  funcLateDemo();
  //Go into function genRandoomString -> Do something else -> test value
  //Do something else -> Do something else -> test value
}
