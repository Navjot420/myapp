import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Developer Profile',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: DeveloperProfile(),
    );
  }
}

class DeveloperProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Developer Profile'),
        backgroundColor: Colors.teal[800],
      ),
      body: Column(
        children: [
          // Profile Header Section
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 173, 149, 71),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://img.etimg.com/thumb/width-1200,height-900,imgsize-63588,resizemode-75,msid-91471061/news/india/sc-refuses-to-entertain-plea-of-sad-leader-bikram-majithia-for-fir-quashing-asks-him-to-move-hc.jpg',
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Navjot Singh',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Software Developer',
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 16, 16, 10),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Body Section (About and Hobbies)
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              color: Colors.teal[50],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // About Section
                  Text(
                    'About Me',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[800],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'I am a dedicated software developer skilled in Flutter and Dart, focusing on building cross-platform mobile apps. I enjoy creating user-friendly designs and solving technical challenges. Always eager to learn new technologies to improve my work.',
                    style: TextStyle(fontSize: 16, color: Colors.teal[700]),
                  ),
                  SizedBox(height: 20),

                  // Hobbies Section
                  Text(
                    'Hobbies',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[800],
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView(
                      children: [
                        Card(
                          color: Colors.teal[100],
                          child: ListTile(
                            leading: Icon(Icons.music_note, color: Colors.teal[800]),
                            title: Text('Playing Guitar'),
                          ),
                        ),
                        Card(
                          color: Colors.teal[100],
                          child: ListTile(
                            leading: Icon(Icons.sports_basketball, color: Colors.teal[800]),
                            title: Text('Playing Basketball'),
                          ),
                        ),
                        Card(
                          color: Colors.teal[100],
                          child: ListTile(
                            leading: Icon(Icons.book, color: Colors.teal[800]),
                            title: Text('Reading Novels'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Footer Section (Social Media Links)
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            color: Colors.teal[300],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.link),
                  color: Colors.white,
                  onPressed: () {}, // Dummy action
                ),
                IconButton(
                  icon: Icon(Icons.code),
                  color: Colors.white,
                  onPressed: () {}, // Dummy action
                ),
                IconButton(
                  icon: Icon(Icons.email),
                  color: Colors.white,
                  onPressed: () {}, // Dummy action
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
