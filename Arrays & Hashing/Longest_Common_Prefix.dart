void main(List<String> args) {
  List<String> words = ["a"];
  int n = words.length;
  if (n == 0) {
    print("");
    return;
  }
  String shortest_str = words[0];
  for (var e in words) {
    if (shortest_str.length > e.length) {
      shortest_str = e;
    }
  }
  String pre = "";
  for (var i = 0; i < shortest_str.length; i++) {
    String ch1 = shortest_str[i];
    for (var j = 0; j < words.length; j++) {
      String ch2 = words[j][i];
      if (ch1 != ch2) {
        print(pre);
        return;
      }
    }
    pre += (ch1);
  }
  print(pre);
}
