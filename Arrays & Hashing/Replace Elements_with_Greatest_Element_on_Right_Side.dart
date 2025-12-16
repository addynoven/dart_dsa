import 'dart:math';

void main(List<String> args) {
  List<int> arr = [17, 18, 5, 4, 6, 1];
  int curr = -1;
  for (var i = arr.length - 1; i >= 0; i--) {
    int temp = arr[i];
    arr[i] = curr;
    print('$curr, $temp, ${max(curr, temp)}');
    curr = max(curr, temp);
  }
  print(arr);
}
