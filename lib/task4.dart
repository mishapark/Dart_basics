Map<String, int> countWords(List<String> words) {
  Map<String, int> wordCount = {};

  for (String word in words) {
    wordCount[word] = (wordCount[word] ?? 0) + 1;
  }

  return wordCount;
}
