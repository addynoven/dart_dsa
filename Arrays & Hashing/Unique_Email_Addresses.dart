void main(List<String> args) {
  Solution sol = Solution();
  print(
    sol.numUniqueEmails([
      "test.email+alex@leetcode.com",
      "test.e.mail+bob.cathy@leetcode.com",
      "testemail+david@lee.tcode.com",
    ]),
  );
}

class Solution {
  int numUniqueEmails(List<String> emails) {
    Set<String> email_set = Set();
    for (String email in emails) {
      List<String> parts = email.split("@");
      String local = parts[0];
      String domain = parts[1];
      local = local.replaceAll(RegExp(r"\.|(\+.*)"), "");
      email_set.add("${local}@${domain}");
    }
    return email_set.length;
  }
}
