class Switz {

  // @Deprecated('Use turnOn instead')
  // @deprecated
  @Deprecated('df')
  @Todo('James', 'Going to school')
  printDescription() {
    print('Switzerland');
  }

  turnOn() {
    print('So turned on');
  }
}

class Todo {
  final String who;
  final String what;
  const Todo(this.who, this.what);
}

void main() {
  Switz().printDescription();
}
