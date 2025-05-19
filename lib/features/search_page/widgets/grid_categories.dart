import 'package:flutter/material.dart';

class GridCategories extends StatelessWidget {
  const GridCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: 1.6,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.pink],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          child: Text(
            'Hip Hop',
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontSize: 20),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.cyan],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          child: Text(
            'Pop',
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontSize: 20),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepOrange, Colors.amber],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          child: Text(
            'Rock',
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontSize: 20),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.cyanAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          child: Text(
            'Electronic',
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontSize: 20),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          child: Text(
            'R&B',
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontSize: 20),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange, Colors.deepOrangeAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          child: Text(
            'Jazz',
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
