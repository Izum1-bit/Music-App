import 'package:flutter/material.dart';
import 'package:music_app/features/home_page/widgets/widgets.dart';
import 'package:music_app/repositoies/popular_albums/popular_albums_repositiry.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Afternoon',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Color.fromARGB(255, 128, 107, 181),
              ),
            ),
            Text(
              'Discover music you\'ll love',
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(color: Colors.grey[400]),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Made for you',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                  ),
                  child: Text(
                    'More -->',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Color.fromARGB(255, 128, 107, 181),
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            MadeForYouListTile(),
            const SizedBox(height: 25),
            Text(
              'Featured Playlist',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
            FeaturedPlaylisList(),
            const SizedBox(height: 25),
            Text(
              'Recently Played',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
            RecentlyPlayedList(),
            const SizedBox(height: 25),
            Text(
              'Popular Artist',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
            PopulatArtistList(),
            FloatingActionButton(
              onPressed: () {
                PopularAlbumsRepository().getPopularAlbums();
              },
            ),
          ],
        ),
      ),
    );
  }
}
