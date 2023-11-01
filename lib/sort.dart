class Sort {
  List<int> call(List<int> n) {
    List<int> res = [...n];
    int length = res.length;
    for (int i = 0; i < length - 1; i++) {
      for (int j = 0; j < length - i - 1; j++) {
        if (res[j] > res[j + 1]) {
          int temp = res[j];
          res[j] = res[j + 1];
          res[j + 1] = temp;
        }
      }
    }
    return res;
  }

  List<int> simpleWay(List<int> n) {
    List<int> res = n;
    res.sort();
    return res;
  }
}
