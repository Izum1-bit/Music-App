import 'package:flutter/material.dart';
import 'package:music_app/features/search_page/widgets/widgets.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Search', style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              prefixIcon: Icon(Icons.search, size: 20),
              isDense: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Search for songs, artists, playlists...',
              hintStyle: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
            ),
          ),
          const SizedBox(height: 30),
          Text(
            'Browse Categories',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 20),

          GridCategories(),
        ],
      ),
    );
  }
}
