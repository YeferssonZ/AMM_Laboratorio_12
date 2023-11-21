import 'package:flutter/material.dart';

class MusicTile extends StatefulWidget {
  final String title;
  final String artist;
  final String imagePath;

  const MusicTile({
    required this.title,
    required this.artist,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  _MusicTileState createState() => _MusicTileState();
}

class _MusicTileState extends State<MusicTile> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(widget.imagePath),
        ),
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          widget.artist,
          style: TextStyle(color: Colors.white70),
        ),
        trailing: IconButton(
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: Colors.red,
          ),
          onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
        ),
        onTap: () {
          _showConfirmationDialog(context, widget.title);
        },
      ),
    );
  }

  Future<void> _showConfirmationDialog(BuildContext context, String songTitle) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Reproducir'),
          content: Text('¿Quieres reproducir la canción "$songTitle"?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                // Agrega la lógica para reproducir la música
                print('Reproducir: $songTitle');
                Navigator.of(context).pop();
              },
              child: Text('Reproducir'),
            ),
          ],
        );
      },
    );
  }
}
