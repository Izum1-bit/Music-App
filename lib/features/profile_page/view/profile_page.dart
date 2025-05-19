import 'dart:ui';

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(3, -1.3),
            child: Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 128, 107, 181),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-3, -1.3),
            child: Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 128, 107, 181),
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 500, sigmaY: 500),
            child: Container(
              decoration: BoxDecoration(color: Colors.transparent),
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 90),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 100,
                    color: Colors.grey[400],
                  ),
                  Text(
                    "John Doe",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  Text(
                    "@johndoe",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [Text("1,205"), Text('Followers')]),
                      const SizedBox(width: 20),
                      Column(children: [Text("356"), Text('Following')]),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 141, 122, 222),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Edit Profile',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
