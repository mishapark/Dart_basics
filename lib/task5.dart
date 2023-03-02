List<int> getUniqueNumbers(String words) {
  List<String> wordsList = words.split(',').map((e) => e.trim()).toList();
  Set<int> uniqueDigits = <int>{};

  for (String word in wordsList) {
    switch (word) {
      case "zero":
        uniqueDigits.add(0);
        break;
      case "one":
        uniqueDigits.add(1);
        break;
      case "two":
        uniqueDigits.add(2);
        break;
      case "three":
        uniqueDigits.add(3);
        break;
      case "four":
        uniqueDigits.add(4);
        break;
      case "five":
        uniqueDigits.add(5);
        break;
      case "six":
        uniqueDigits.add(6);
        break;
      case "seven":
        uniqueDigits.add(7);
        break;
      case "eight":
        uniqueDigits.add(8);
        break;
      case "nine":
        uniqueDigits.add(9);
        break;
    }
  }

  return uniqueDigits.toList();
}
