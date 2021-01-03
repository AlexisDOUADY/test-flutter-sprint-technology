import 'package:flutter/cupertino.dart';
import 'package:test_flutter_sprint_technology/blocs/bloc.dart';

class BlocProvider<T extends Bloc> extends StatefulWidget {
  final T bloc;
  final Widget child;

  BlocProvider({@required this.bloc, @required this.child});

  static T of<T extends Bloc>(BuildContext context) {
    return context.findAncestorWidgetOfExactType<BlocProvider<T>>().bloc;
  }

  State createState() => _BlocProviderState();
}

class _BlocProviderState extends State<BlocProvider> {

  @override
  Widget build(BuildContext context) => widget.child;

  @override
  void dispose() {
    widget.bloc.dispose();
    super.dispose();
  }

}