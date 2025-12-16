void main(List<String> args) {
  String a = "anagram", b = "nagaram";
  if (a.length != b.length) {
    print(false);
  }
  int n = a.length;
  List<int> cc = List.filled(26, 0);
  for (int i = 0; i < n; i++) {
    cc[a.codeUnitAt(i) - 97]++;
    cc[b.codeUnitAt(i) - 97]--;
  }

  bool flag = cc.every((x) => (x == 0));

  print(flag);
}
