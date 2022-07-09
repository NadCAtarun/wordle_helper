import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:wordle_helper/constants.dart';

List solutions = [];

Future<String> loadSolutions(Version version) async {
  var jsonText = await rootBundle
      .loadString('assets/${version.toShortString()}_solutions.json');

  solutions = json.decode(jsonText);

  return 'Loaded JSON successfully';
}
