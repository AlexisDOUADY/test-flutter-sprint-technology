import 'package:test_flutter_sprint_technology/blocs/bloc_provider.dart';
import 'package:test_flutter_sprint_technology/blocs/tracks_bloc.dart';
import 'package:test_flutter_sprint_technology/ui/screens/tracks_research_screen.dart';

class BlocRouter {
  BlocProvider tracksResearch() => BlocProvider<TracksBloc>(bloc: TracksBloc(), child: TrackResearchScreen());
}