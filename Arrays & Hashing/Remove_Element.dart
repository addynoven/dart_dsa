void main(List<String> args) {
  Solution sol = Solution();
  int result = sol.removeElement([3, 2, 2, 3], 3);
  print(result == 2);
}

class Solution {
  int removeElement(List<int> nums, int val) =>
      (nums..retainWhere((e) => e != val)).length;
}
