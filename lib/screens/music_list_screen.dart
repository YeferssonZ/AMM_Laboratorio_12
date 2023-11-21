import 'package:flutter/material.dart';
import '../widgets/music_tile.dart';

class MusicListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista de Música',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: [
            MusicTile(
              title: 'In the End',
              artist: 'Linkin Park',
              imagePath: 'assets/linkin_park.jpg',
            ),
            MusicTile(
              title: 'Du Hast',
              artist: 'Rammstein',
              imagePath: 'assets/rammstein.jpg',
            ),
            MusicTile(
              title: 'Radioactive',
              artist: 'Imagine Dragons',
              imagePath: 'assets/imagine_dragons.jpg',
            ),
            MusicTile(
              title: 'Enter Sandman',
              artist: 'Metallica',
              imagePath: 'assets/metallica.jpg',
            ),
            MusicTile(
              title: 'Bohemian Rhapsody',
              artist: 'Queen',
              imagePath: 'assets/queen.jpg',
            ),
            MusicTile(
              title: 'Boku no sensou',
              artist: 'Shinsei Kamattechan',
              imagePath: 'assets/shinsei.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
