void main(List<String> args) {
  String a = "hello";
  int sum = 0;
  for (int i = 0; i < a.length - 1; i++) {
    int x = a.codeUnitAt(i);
    int y = a.codeUnitAt(i + 1);
    int z = x - y;
    sum = sum + z.abs();
  }
  print(sum);
}
