void main(List<String> args) {
  List<String> words = ["abcd", "bnrt", "crmy", "dtye"];
  int n = words.length;
  for (int i = 0; i < n; i++) {
    String row_string = words[i];
    String col_string = "";
    for (int j = 0; j < n; j++) {
      if (i < words[j].length) {
        col_string += words[j][i];
      }
    }
    if (row_string != col_string) {
      print(false);
      return;
    }
  }
  print(true);
  return;
}
