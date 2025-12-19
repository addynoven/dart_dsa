void main(List<String> args) {
  Solution sol = Solution();
  int rowIndex = 4;
  List<int> result = sol.getRow(rowIndex);
  List<int> expected = [1, 4, 6, 4, 1];
  print(
    result.length == expected.length &&
        List.generate(
          result.length,
          (i) => result[i] == expected[i],
        ).every((e) => e),
  );
}

class Solution {
  List<int> getRow(int rowIndex) {
    List<int> row = [1];
    for (int i = 1; i <= rowIndex; i++) {
      row.insert(i, 0);
      for (int j = i; j > 0; j--) {
        row[j] = row[j] + row[j - 1];
      }
    }
    return row;
  }
}
