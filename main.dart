import 'dart:math';

void main() {
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  var image = {
    'tags': ['saturn'],
    'url': 'https://google.com'
  };

  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  for (final object in flybyObjects) {
    print(object);
  }
  print('*** filtered ****');
  flybyObjects.where((name) => name.endsWith('r')).forEach(print);

  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched("Voyager III");
  voyager3.describe();
}

/// A function that returns the fibonacci number for a given input
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntatic sugar for assignment to members
  Spacecraft(this.name, this.launchDate) {}

  // named constructor, this forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // method
  void describe() {
    print('*** Spacecraft: $name ***');
    // type promorition doesn't work on getters
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print("Launched: $launchYear ($years) years ago");
    } else {
      print('Unlaunched');
    }
    print("*** End ***");
  }
}
