import 'package:flutter/material.dart';
import 'package:test_flutter_sprint_technology/models/track.dart';

class TrackTile extends StatelessWidget {

  final Track track;

  TrackTile(this.track);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: [
            Text(track.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("${track.artistName} - ${track.albumName}",
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}