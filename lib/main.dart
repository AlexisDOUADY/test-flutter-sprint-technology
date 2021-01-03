import 'package:flutter/material.dart';
import 'package:test_flutter_sprint_technology/blocs/bloc_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tracks research',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: BlocRouter().tracksResearch(),
    );
  }
}
