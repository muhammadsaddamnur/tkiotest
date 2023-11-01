import 'dart:developer';

class Palindrom {
  bool call(String inputStr) {
    int n = inputStr.length;
    for (var i = 0; i < n ~/ 2; i++) {
      log(i.toString());
      log(inputStr[i]);
      log(inputStr[n - i - 1]);
      if (inputStr[i] != inputStr[n - i - 1]) {
        return false;
      }
    }
    return true;
  }

  bool simpleWay(String inputStr) {
    String cleanedStr = inputStr.toLowerCase();
    String reversedStr = cleanedStr.split('').reversed.join('');
    return cleanedStr == reversedStr;
  }
}
