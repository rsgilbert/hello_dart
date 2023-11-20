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

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

   var fib10 = fibonacci(10);
   print(fib10);
}

int fibonacci(int n){
  if(n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}