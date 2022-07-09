import 'package:flutter/material.dart';

class VersionSwitcher extends StatelessWidget {
  static const String routeName = '/switch';

  const VersionSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Choose a Wordle version'),
      ),
      body: Container(),
    );
  }
}
