import 'package:test_flutter_sprint_technology/blocs/bloc.dart';
import 'package:test_flutter_sprint_technology/services/musicmatch_api.dart';

class TracksBloc extends Bloc {

  fetchTracks(String keywords) async {
    sink.add(await MusixMatchApi().searchForTrack(keywords));
  }

  TracksBloc() {
    fetchTracks("");
  }
}