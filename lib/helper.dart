import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wordle_helper/version.dart';
import 'package:wordle_helper/words.dart';

class Helper extends StatefulWidget {
  const Helper({Key? key}) : super(key: key);

  @override
  State<Helper> createState() => _HelperState();
}

class _HelperState extends State<Helper> {
  List solutions = [];

  void loadSolutions({Version version = kDefaultVersion}) async {
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
      ),
      body: Words(words: solutions),
    );
  }
}
