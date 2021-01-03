import 'package:test_flutter_sprint_technology/blocs/bloc.dart';
import 'package:test_flutter_sprint_technology/models/track.dart';
import 'package:test_flutter_sprint_technology/services/musicmatch_api.dart';

class TracksBloc extends Bloc<List<Track>> {

  fetchTracks(String keywords) async {
    sink.add(await MusixMatchApi().searchForTrack(keywords));
  }

  TracksBloc() {
    fetchTracks("");
  }
}