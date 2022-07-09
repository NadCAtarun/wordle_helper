enum Version {
  englishNYT(
    'en',
    'New York Times (official)',
    'https://www.nytimes.com/games/wordle/index.html',
  ),
  frenchLouan(
    'fr',
    'French version (by @louanben)',
    'https://wordle.louan.me/',
  );

  const Version(this.prefix, this.fullName, this.url);
  final String prefix;
  final String fullName;
  final String url;
}

const Version kDefaultVersion = Version.englishNYT;

const List<Version> kVersions = Version.values;
