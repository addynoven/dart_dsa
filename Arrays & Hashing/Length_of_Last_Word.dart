import 'dart:math';

void main() {
  String ss = " a";
  int lc = 0;
  int cc = 0;
  for (var i = 0; i < ss.length; i++) {
    if (ss[i] == " ") {
      if (cc != 0) {
        lc = cc;
      }
      cc = 0;
    } else {
      cc++;
    }
  }
  print(max(lc, cc));
}
