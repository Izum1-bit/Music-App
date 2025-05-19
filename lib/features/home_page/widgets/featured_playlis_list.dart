import 'dart:math';

import 'package:flutter/material.dart';
import 'package:music_app/repositoies/models/popular_albums.dart';
import 'package:music_app/repositoies/popular_albums/popular_albums_repositiry.dart';

class FeaturedPlaylisList extends StatefulWidget {
  const FeaturedPlaylisList({super.key});

  @override
  State<FeaturedPlaylisList> createState() => _FeaturedPlaylisListState();
}

class _FeaturedPlaylisListState extends State<FeaturedPlaylisList> {
  List<PopularAlbums>? _popularAlbumsList;

  @override
  void initState() {
    super.initState();
    _loadAlbums();
  }

  Future<void> _loadAlbums() async {
    final albums = await PopularAlbumsRepository().getPopularAlbums();
    setState(() {
      _popularAlbumsList = albums;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (_popularAlbumsList == null)
        ? SizedBox(
          height: MediaQuery.of(context).size.height * 0.23,
          child: Center(child: Text('PlayList is not upload')),
        )
        : SizedBox(
          height: MediaQuery.of(context).size.height * 0.23, // высота карточек
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: min(_popularAlbumsList!.length, 5),
            itemBuilder: (context, index) {
              final album = _popularAlbumsList![index];
              return Container(
                width: 150,
                margin: const EdgeInsets.only(right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      album.artistName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge?.copyWith(fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        album.imageURL.isNotEmpty
                            ? album.imageURL
                            : 'https://via.placeholder.com/150',
                        height: 130,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      album.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey[400],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
  }
}
