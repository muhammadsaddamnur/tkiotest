class Fibonacci {
  List<int> call(int N) {
    List<int> res = [];
    for (int i = 0; i < N; i++) {
      res.add(fibonacci(i));
    }
    return res;
  }

  int fibonacci(int n) {
    if (n == 0 || n == 1) {
      return n;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}
