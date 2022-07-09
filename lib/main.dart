import 'package:flutter/material.dart';
import 'package:wordle_helper/screens/helper.dart';
import 'package:wordle_helper/screens/versionSwitcher.dart';

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
      initialRoute: '/',
      routes: {
        Helper.routeName: (context) => const Helper(),
        VersionSwitcher.routeName: (context) => const VersionSwitcher(),
      },
    );
  }
}
