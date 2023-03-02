List<num> findNumbersInString(String input) {
  List<num> numbers = [];
  RegExp regex = RegExp(r"[-+]?\d+(\.\d+)?");

  for (Match match in regex.allMatches(input)) {
    numbers.add(num.parse(match.group(0)!));
  }

  return numbers;
}
