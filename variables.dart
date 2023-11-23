
void main() {
  var d = new Dig();
  print(Dig.v);
  print(d.m);

  const bar  = 100;
  const double atm = 1.01 * bar;
  print(bar);
  print(atm);

  var abc =  [];
  // xyz = [3];
  abc.add(9);
  print(abc);

  const Object i = 3;
  const list = [i as int, 5];
  final map = { if (i is int) i: 'int'};
  const set = { if (list is List<int>) ...list };

  print(i);
  print(list);
  print(map);
  print(set);

  map[3] = 'double';
  print(map);
}


class Dig {
  var m = 3;
  static const v = 4;
}