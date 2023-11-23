void main() {
  print(5 ~/ 2);
  print(5 is! String); // is not
  // var m = 10 as String;
  // print(m);

  // int? j ;
  // j = 3;
  // j ??= 50;
  // print(j);

  var p = Person();
  p
  ..age = 10 
  ..name = 'Joseph'
  ..printName()
  ..printAge();

  var sb = StringBuffer();
  sb
  ..write('hi')
  ..write(' ')
  ..write('you');
  print(sb);

}


class Person {
  String? name;
  printName() {
    print(name);
  }
  int? age;
  printAge() {
    print(age);
  }
}