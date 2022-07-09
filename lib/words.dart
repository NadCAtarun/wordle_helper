import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wordle_helper/version.dart';

class Words extends StatefulWidget {
  const Words({Key? key}) : super(key: key);

  @override
  State<Words> createState() => _WordsState();
}

class _WordsState extends State<Words> {
  List allSolutions = [];

  void loadSolutions({Version version = kDefaultVersion}) async {
    var jsonText =
        await rootBundle.loadString('assets/${version.prefix}_solutions.json');

    List list = json.decode(jsonText);

    setState(() {
      allSolutions = list;
    });
  }

  @override
  void initState() {
    loadSolutions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allSolutions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(allSolutions[index]),
        );
      },
    );
  }
}
