void main(List<String> args) {
  List<String> details = [
    "7868190130M7522",
    "5303914400F9211",
    "9273338290F4010",
  ];
  int seniorCitizenCount = 0;
  for (String detail in details) {
    int age = int.parse(detail.substring(11, 13));
    if (age > 60) {
      seniorCitizenCount++;
    }
  }
  print(seniorCitizenCount);
}
