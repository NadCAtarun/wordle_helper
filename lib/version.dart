enum Version {
  englishNYT(
    'en',
    'πΊπΈ',
    'Official @nytimes',
    'https://www.nytimes.com/games/wordle/index.html',
  ),
  frenchLouan(
    'fr',
    'π«π·',
    'French version @louanben',
    'https://wordle.louan.me/',
  );

  const Version(this.prefix, this.flag, this.fullName, this.url);
  final String prefix;
  final String flag;
  final String fullName;
  final String url;
}

const Version kDefaultVersion = Version.englishNYT;

const List<Version> kVersions = Version.values;
