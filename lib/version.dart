enum Version {
  englishNYT('en', 'https://www.nytimes.com/games/wordle/index.html'),
  frenchLouan('fr', 'https://wordle.louan.me/');

  const Version(this.prefix, this.url);
  final String prefix;
  final String url;
}

const kDefaultVersion = Version.englishNYT;
