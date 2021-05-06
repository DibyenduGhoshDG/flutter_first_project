import 'package:first_flutter_application/small_topic/container_demo.dart';
import 'package:first_flutter_application/small_topic/flutterLifeCycle.dart';
import 'package:first_flutter_application/small_topic/mediaQuery.dart';
import 'package:first_flutter_application/small_topic/statefulWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First Application",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red),
      home: FluterLifeCycle(),
    );
  }
}
