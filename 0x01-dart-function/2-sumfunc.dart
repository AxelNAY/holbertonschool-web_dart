int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  int sum = add(a, b);
  int substract = sub(a, b);
  String str = "Add $a + $b = $sum\nSub $a - $b = $substract";
  return str;
}
