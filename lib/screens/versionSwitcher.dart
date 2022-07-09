import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wordle_helper/constants.dart';
import 'package:wordle_helper/version.dart';

class VersionSwitcher extends StatelessWidget {
  final void Function(Version) onChoice;
  final Version currentVersion;

  const VersionSwitcher({
    Key? key,
    required this.onChoice,
    required this.currentVersion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Choose a Wordle',
          style: kAppBarTitleStyle,
        ),
      ),
      body: ListView.builder(
        itemCount: kVersions.length,
        itemBuilder: (context, index) {
          Version version = kVersions[index];
          bool selected = currentVersion == version;
          return ListTile(
            autofocus: currentVersion == version,
            tileColor: selected ? const Color(0xFF243A05) : null,
            subtitle: selected ? const Text('Currently using') : null,
            leading: Text(
              version.flag,
              style: const TextStyle(
                fontSize: 30.0,
              ),
            ),
            title: Text(
              version.fullName,
              style: GoogleFonts.outfit().copyWith(fontSize: 20.0),
            ),
            trailing: IconButton(
              iconSize: 30.0,
              color: Colors.blue,
              icon: const Icon(Icons.link),
              onPressed: () {
                launchUrl(Uri.parse(version.url));
              },
            ),
            onTap: selected
                ? null
                : () {
                    onChoice(version);
                  },
          );
        },
      ),
    );
  }
}
