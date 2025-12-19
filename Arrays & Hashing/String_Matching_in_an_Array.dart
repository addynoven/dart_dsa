bool listEquals<T>(List<T> a, List<T> b) {
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

void main(List<String> args) {
  Solution sol = Solution();
  List<String> words = ["mass", "as", "hero", "superhero"];
  List<String> result = sol.stringMatching(words);
  result.sort();
  List<String> expected = ["as", "hero"];
  expected.sort();
  print(listEquals(result, expected));
}

class Solution {
  List<String> stringMatching(List<String> words) {
    final Set<String> res = {};
    for (var i = 0; i < words.length; i++) {
      for (var j = 0; j < words.length; j++) {
        if (i != j && words[j].contains(words[i])) {
          res.add(words[i]);
          break;
        }
      }
    }
    return res.toList();
  }
}
