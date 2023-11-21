import 'dart:math';

void main() {

  Orbiter orb1 = Orbiter('Vanguard', DateTime.now(), 10);
  print(orb1);
  print(orb1.altitude);

  PilotedCraft pc = PilotedCraft('Boeing', DateTime(2023,10,10));
  pc.describe();
}

mixin Piloted {
  int astronauts = 1;
  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(super.name, super.launchDate);

  describe() {
    super.describe();
    super.describeCrew();
  }
}

class Orbiter extends Spacecraft {
  double altitude ;

  Orbiter(super.name, DateTime super.launchDated, this.altitude);
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
