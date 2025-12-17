void main() {
  String tt = "abc";
  String ss = "ahbgdc";
  int t_idx = 0;
  for (var i = 0; i < ss.length; i++) {
    if (t_idx >= tt.length) {
      break;
    }
    if (tt[t_idx] == ss[i]) {
      t_idx++;
    }
  }
  bool flag = false;
  if (tt.length == t_idx) {
    flag = true;
  }
  print(flag);
}
