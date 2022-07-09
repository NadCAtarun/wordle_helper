import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wordle_helper/screens/versionSwitcher.dart';
import 'package:wordle_helper/version.dart';
import 'package:wordle_helper/words.dart';

class Helper extends StatefulWidget {
  static const String routeName = '/';

  const Helper({Key? key}) : super(key: key);

  @override
  State<Helper> createState() => _HelperState();
}

class _HelperState extends State<Helper> {
  Version version = kDefaultVersion;

  List solutions = [];

  void loadSolutions() async {
    var jsonText =
        await rootBundle.loadString('assets/${version.prefix}_solutions.json');

    List list = json.decode(jsonText);

    setState(() {
      solutions = list;
    });
  }

  @override
  void initState() {
    loadSolutions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Wordle Helper'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, VersionSwitcher.routeName);
            },
            icon: const Icon(Icons.language),
          ),
        ],
      ),
      body: Words(words: solutions),
    );
  }
}
