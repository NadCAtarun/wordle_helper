import 'package:flutter/material.dart';

class Words extends StatelessWidget {
  final List words;

  const Words({Key? key, required this.words}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: words.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(words[index]),
        );
      },
    );
  }
}
