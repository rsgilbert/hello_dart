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

  final Planet myPlanet = Planet.earth;
  if(myPlanet.isGiant) {
  print('My planet is a giant');
  }
  else {
    print('My planet is not a giant');
  }
}

enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  earth(planetType: PlanetType.terrestrial, moons: 1, hasRings: false),
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

  const Planet(
      {required this.planetType, required this.moons, required this.hasRings});

  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  /// Enhanced enums support getters and other methods
  bool get isGiant => planetType == PlanetType.gas || planetType == PlanetType.ice;


}

enum PlanetType { terrestrial, gas, ice }

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
