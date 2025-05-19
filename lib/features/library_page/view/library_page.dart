import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  // Функция для смены контента

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Library',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add, size: 25, color: Colors.white),
                  style: IconButton.styleFrom(padding: EdgeInsets.zero),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[800],
              child: TabBar(
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,

                indicatorPadding: EdgeInsets.all(5),
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Color.fromARGB(255, 128, 107, 181),
                ),
                unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
                indicator: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                tabs: [
                  Tab(text: 'Playlists'),
                  Tab(text: 'Albums'),
                  Tab(text: 'Songs'),
                ],
              ),
            ),

            const Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: Text(
                      'Playlists',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Albums',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Center(
                    child: Text('Songs', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
