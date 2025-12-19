void main(List<String> args) {
  Solution sol = Solution();
  final List<String> words = ["mass", "as", "hero", "superhero"];
  List<String> result = sol.stringMatching(words);
  final Set<String> expected = {"as", "hero"};
  print(result.length == expected.length && expected.containsAll(result));
}

class Solution {
  List<String> stringMatching(List<String> words) {
    final Set<String> res = {};
    for (var ele1 in words) {
      for (var ele2 in words) {
        if (ele2.contains(ele1) && ele1 != ele2) {
          res.add(ele1);
        }
      }
    }
    return res.toList();
  }
}
