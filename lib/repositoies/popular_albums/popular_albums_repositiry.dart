import 'package:dio/dio.dart';
import 'package:music_app/repositoies/models/popular_albums.dart';

class PopularAlbumsRepository {
  Future<List<PopularAlbums>> getPopularAlbums() async {
    try {
      final response = await Dio().get(
        'http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=Billie+Eilish&api_key=8d27c715e9c26645c4a18dc33e836658&format=json',
      );

      final data = response.data as Map<String, dynamic>;
      final albums = data['topalbums']['album'] as List<dynamic>;

      final albumsList =
          albums.map((album) {
            return PopularAlbums(
              name: album['name'] ?? 'Unknown',
              playCount: int.tryParse(album['playcount'].toString()) ?? 0,
              artistName: album['artist']['name'] ?? 'Unknown',
              imageURL:
                  album['image'] != null && album['image'].isNotEmpty
                      ? album['image'].last['#text'] ?? ''
                      : '',
            );
          }).toList();
      for (var album in albumsList) {
        print(album);
      }
      return albumsList;
    } catch (e) {
      print('Error fetching popular albums: $e');
      return [];
    }
  }
}
