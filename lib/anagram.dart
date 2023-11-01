import 'dart:developer';

class Anagram {
  List<List<String>> call(List<String> n) {
    Map<String, List<String>> anagramGroups = {};
    for (String word in n) {
      String sortedWord = String.fromCharCodes(word.runes.toList()..sort());
      log(word.runes.toString());
      log((word.runes.toList()..sort()).toString());
      log(sortedWord.toString());
      if (!anagramGroups.containsKey(sortedWord)) {
        anagramGroups[sortedWord] = [];
      }
      anagramGroups[sortedWord]?.add(word);
      log(anagramGroups.toString());
    }
    return anagramGroups.values.toList();
  }
}
