class PopularAlbums {
  const PopularAlbums({
    required this.name,
    required this.playCount,
    required this.artistName,
    required this.imageURL,
  });

  final String name;
  final int playCount;
  final String artistName;
  final String imageURL;

  @override
  String toString() {
    return 'PopularAlbums(name: $name, playCount: $playCount, artistName: $artistName, imageURL: $imageURL)';
  }
}
