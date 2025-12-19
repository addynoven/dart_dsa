void main(List<String> args) {
  Solution sol = Solution();
  int numRows = 5;
  List<List<int>> result = sol.generate(numRows);
  List<List<int>> expected = [
    [1],
    [1, 1],
    [1, 2, 1],
    [1, 3, 3, 1],
    [1, 4, 6, 4, 1],
  ];
  bool isEqual = true;
  if (result.length != expected.length) {
    isEqual = false;
  } else {
    for (int i = 0; i < result.length; i++) {
      if (result[i].length != expected[i].length) {
        isEqual = false;
        break;
      }
      for (int j = 0; j < result[i].length; j++) {
        if (result[i][j] != expected[i][j]) {
          isEqual = false;
          break;
        }
      }
      if (!isEqual) {
        break;
      }
    }
  }
  print(isEqual);
}

class Solution {
  List<List<int>> generate(int numRows) {
    List<List<int>> triangle = [
      [1],
    ];
    for (var i = 1; i < numRows; i++) {
      final List<int> last_row = triangle[i - 1];
      List<int> curr_row = List<int>.filled(i + 1, 1, growable: false);
      for (var j = 1; j < curr_row.length - 1; j++) {
        curr_row[j] = last_row[j - 1] + last_row[j];
      }
      triangle.add(curr_row);
    }
    return triangle;
  }
}
