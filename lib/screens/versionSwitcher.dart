import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wordle_helper/version.dart';

class VersionSwitcher extends StatelessWidget {
  final void Function(Version)? onChoice;

  const VersionSwitcher({
    Key? key,
    this.onChoice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Choose a Wordle version'),
      ),
      body: ListView.builder(
        itemCount: kVersions.length,
        itemBuilder: (context, index) {
          Version version = kVersions[index];
          return ListTile(
            title: Text(version.fullName),
            trailing: IconButton(
              icon: const Icon(Icons.link),
              onPressed: () {
                launchUrl(Uri.parse(version.url));
              },
            ),
            onTap: () {
              if (onChoice != null) {
                onChoice!(version);
              }
            },
          );
        },
      ),
    );
  }
}
