import 'package:flutter/material.dart';
import 'package:wordle_helper/constants.dart';
import 'package:wordle_helper/json_loader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wordle Helper',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Wordle Helper'),
        ),
        body: const Words(),
      ),
    );
  }
}

class Words extends StatefulWidget {
  const Words({Key? key}) : super(key: key);

  @override
  State<Words> createState() => _WordsState();
}

class _WordsState extends State<Words> {
  @override
  void initState() {
    loadSolutions(kDefaultVersion);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: solutions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(solutions[index]),
        );
      },
    );
  }
}
