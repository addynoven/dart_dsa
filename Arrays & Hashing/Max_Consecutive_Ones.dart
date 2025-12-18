import 'dart:math';

void main(List<String> args) {
  List<int> arr = [1, 1, 0, 1, 1, 1];
  int mc = 0, cc = 0;
  for (var ele in arr) {
    if (ele == 0) {
      mc = max(mc, cc);
      cc = 0;
    } else {
      cc++;
    }
  }
  print(max(mc, cc));
}
