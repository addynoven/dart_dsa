void main(List<String> args) {
  List<int> arr = [2, 7, 11, 15];
  int tt = 9;
  Map<int, int> mymap = Map();
  for (int i = 0; i < arr.length; i++) {
    int cc = tt - arr[i];
    if (mymap.containsKey(cc)) {
      print("${mymap[cc]},${i}");
      return;
    }
    mymap[arr[i]] = i;
  }
}
