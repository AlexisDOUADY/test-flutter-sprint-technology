import 'package:flutter/material.dart';
import 'package:test_flutter_sprint_technology/models/track.dart';
import 'package:test_flutter_sprint_technology/ui/tiles/track_tile.dart';

class TracksList extends StatelessWidget {

  final List<Track> tracks;

  TracksList(this.tracks);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: tracks.length,
      itemBuilder: (ctx, i) => TrackTile(tracks[i]),
    );
  }
}