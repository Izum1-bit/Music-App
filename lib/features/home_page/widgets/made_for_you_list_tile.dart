import 'package:flutter/material.dart';

class MadeForYouListTile extends StatelessWidget {
  const MadeForYouListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.42,
      width: MediaQuery.of(context).size.width,

      child: Column(
        children: List.generate(
          5,
          (index) => ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            leading: Image.asset(
              'assets/image/Blinding_Lights.png',
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(
              'Blinding Lights',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontSize: 16),
            ),
            subtitle: Text(
              'The Weeknd',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey[600],
                fontSize: 14,
              ),
            ),
            trailing: const Icon(Icons.favorite),
          ),
        ),
      ),
    );
  }
}
