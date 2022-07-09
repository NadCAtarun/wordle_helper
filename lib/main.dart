import 'package:flutter/material.dart';
import 'package:wordle_helper/words.dart';

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
