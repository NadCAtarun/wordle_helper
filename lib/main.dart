import 'package:flutter/material.dart';
import 'package:wordle_helper/constants.dart';
import 'package:wordle_helper/screens/helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppTitle,
      theme: ThemeData.dark(),
      home: const Helper(),
    );
  }
}
