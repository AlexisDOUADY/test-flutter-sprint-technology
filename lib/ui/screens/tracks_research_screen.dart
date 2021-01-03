import 'package:flutter/material.dart';
import 'package:test_flutter_sprint_technology/blocs/bloc_provider.dart';
import 'package:test_flutter_sprint_technology/blocs/tracks_bloc.dart';
import 'package:test_flutter_sprint_technology/models/track.dart';
import 'package:test_flutter_sprint_technology/ui/lists/tracks_list.dart';
import 'package:test_flutter_sprint_technology/ui/widgets/no_data.dart';
import 'package:test_flutter_sprint_technology/ui/widgets/top_bar_widget.dart';

class TrackResearchScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<TracksBloc>(context);

    return Scaffold(
      appBar: TopBar("Tracks Research"),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              onChanged: (String keywords) => bloc.fetchTracks(keywords),
              decoration: InputDecoration(
                labelText: "Research a track :",
              ),
            ),
            StreamBuilder<List<Track>>(
                stream: bloc.stream,
                builder: (ctx, snapshot) {
                  if(snapshot == null) {
                    return NoData("No track found for now...");
                  } else if (!snapshot.hasData) {
                    return NoData("Could not find a track for the given keywords");
                  }
                  return TracksList(snapshot.data);
                }
            ),
          ],
        ),
      ),
    );
  }
}