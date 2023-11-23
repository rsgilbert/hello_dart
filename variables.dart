int calcLineCount() {
  print('Calculating line count');
  return 10;
}

late int lineCount = calcLineCount();

void main() {
  String? name = 'Bob';
  pr(name);

  // print(lineCount);
  print('hi');
}

void pr(String nm) {
  print(nm.length);
}
