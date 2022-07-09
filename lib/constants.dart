enum Version {
  fr,
  en,
}

const kDefaultVersion = Version.en;

extension ParseToString on Version {
  String toShortString() {
    return toString().split('.').last;
  }
}
