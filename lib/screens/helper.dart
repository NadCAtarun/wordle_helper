import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wordle_helper/constants.dart';
import 'package:wordle_helper/screens/versionSwitcher.dart';
import 'package:wordle_helper/version.dart';
import 'package:wordle_helper/words.dart';

class Helper extends StatefulWidget {
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
        title: Text(
          kAppTitle,
          style: kAppBarTitleStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VersionSwitcher(
                    onChoice: (newVersion) {
                      version = newVersion;
                      loadSolutions();
                      Navigator.pop(context);
                    },
                    currentVersion: version,
                  ),
                ),
              );
            },
            icon: const Icon(Icons.language),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Words(words: solutions)),
        ],
      ),
    );
  }
}
