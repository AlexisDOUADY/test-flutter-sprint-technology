import 'dart:async';

abstract class Bloc<T> {
  final StreamController<T> _streamController = StreamController<T>();
  Stream<T> get stream => _streamController.stream;
  Sink<T> get sink => _streamController.sink;

  dispose() => _streamController.close();
}