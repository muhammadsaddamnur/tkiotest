import 'package:flutter/material.dart';
import 'package:tokio/anagram.dart';
import 'package:tokio/fibonacci.dart';
import 'package:tokio/palindrom.dart';
import 'package:tokio/sort.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final fibonacciClass = Fibonacci();
  final palindromicClass = Palindrom();
  final sortClass = Sort();
  final anagramClass = Anagram();

  static const int fibonacciTest = 5;
  static const List<int> sortTest = [5, 3, 7, 8];
  static const List<String> anagramTest = [
    'aku',
    'makan',
    'kua',
    'kau',
    'muka',
    'kamu'
  ];
  static const String palindromicTest = 'katak';

  List<int> fibonacci = [];
  List<int> sort = [];
  List<List<String>> anagram = [];
  bool palindromic = false;

  void calcullate() {
    fibonacci = fibonacciClass(fibonacciTest);
    palindromic = palindromicClass(palindromicTest);
    sort = sortClass(sortTest);
    anagram = anagramClass(anagramTest);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: Text('$fibonacciTest > $fibonacci'),
              subtitle: const Text('Fibonacci'),
            ),
            const Divider(),
            ListTile(
              title: Text('$palindromicTest > $palindromic'),
              subtitle: const Text('Palindromic'),
            ),
            const Divider(),
            ListTile(
              title: Text('$sortTest > $sort'),
              subtitle: const Text('Sort'),
            ),
            const Divider(),
            ListTile(
              title: Text('$anagramTest > $anagram'),
              subtitle: const Text('Anagram'),
            ),
            ElevatedButton(
                onPressed: () {
                  calcullate();
                },
                child: const Text('calculate'))
          ],
        ),
      ),
    );
  }
}
